"""Switch the running Asylum scene between its source cast and authored layout."""
import argparse
from dialogue_preview import lua

PROFILES=('first_visit','first_visit_basic','first_visit_quest','hotel_return','gallery','gallery_return','sisters')


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    actions=parser.add_mutually_exclusive_group(required=True)
    actions.add_argument('--profile',choices=PROFILES,help='Reset dialogue state and populate this source story stage')
    actions.add_argument('--enable',action='store_true',help='Use the current dialogue state')
    actions.add_argument('--disable',action='store_true',help='Restore the prior map actors and their positions')
    actions.add_argument('--status',action='store_true')
    args=parser.parse_args()
    if args.status:
        code='print([[AS_CAST_STATE]],thisEntity:Attribute_GetIntValue([[asylum_cast_enabled]],0));for _,e in ipairs(Entities:FindAllByClassname([[generic_actor]])) do if e:GetName():match([[^npc_vampire_asylum_]]) then print(e:GetName(),e:GetModelName()) end end'
        expected='AS_CAST_STATE'
    else:
        code='if not AsylumCastEnable then DoIncludeScript([[asylum_cast]],thisEntity:GetPrivateScriptScope()) end;'
        code+= 'AsylumCastDisable()' if args.disable else ('AsylumCastEnable([['+args.profile+']])' if args.profile else 'AsylumCastEnable()')
        expected='[ASYLUM_CAST] DISABLED' if args.disable else '[ASYLUM_CAST] ENABLED'
    try:reply=lua(code)
    except OSError as error:parser.exit(1,'Alyx VConsole is unavailable: '+str(error)+'\n')
    if expected not in reply:parser.exit(1,'The Asylum scene did not acknowledge the request.\n'+reply[-1500:])
    for line in reply.splitlines():
        if line.startswith(('[ASYLUM_CAST]', 'AS_CAST_STATE', 'npc_vampire_asylum_')):
            print(line)


if __name__=='__main__':main()
