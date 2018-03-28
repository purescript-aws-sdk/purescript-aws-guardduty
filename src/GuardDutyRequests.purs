
module AWS.GuardDuty.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.GuardDuty as GuardDuty
import AWS.GuardDuty.Types as GuardDutyTypes


-- | Accepts the invitation to be monitored by a master GuardDuty account.
acceptInvitation :: forall eff. GuardDuty.Service -> GuardDutyTypes.AcceptInvitationRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.AcceptInvitationResponse
acceptInvitation (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "acceptInvitation"


-- | Archives Amazon GuardDuty findings specified by the list of finding IDs.
archiveFindings :: forall eff. GuardDuty.Service -> GuardDutyTypes.ArchiveFindingsRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.ArchiveFindingsResponse
archiveFindings (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "archiveFindings"


-- | Creates a single Amazon GuardDuty detector. A detector is an object that represents the GuardDuty service. A detector must be created in order for GuardDuty to become operational.
createDetector :: forall eff. GuardDuty.Service -> GuardDutyTypes.CreateDetectorRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.CreateDetectorResponse
createDetector (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createDetector"


-- | Creates a new IPSet - a list of trusted IP addresses that have been whitelisted for secure communication with AWS infrastructure and applications.
createIPSet :: forall eff. GuardDuty.Service -> GuardDutyTypes.CreateIPSetRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.CreateIPSetResponse
createIPSet (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createIPSet"


-- | Creates member accounts of the current AWS account by specifying a list of AWS account IDs. The current AWS account can then invite these members to manage GuardDuty in their accounts.
createMembers :: forall eff. GuardDuty.Service -> GuardDutyTypes.CreateMembersRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.CreateMembersResponse
createMembers (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createMembers"


-- | Generates example findings of types specified by the list of finding types. If 'NULL' is specified for findingTypes, the API generates example findings of all supported finding types.
createSampleFindings :: forall eff. GuardDuty.Service -> GuardDutyTypes.CreateSampleFindingsRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.CreateSampleFindingsResponse
createSampleFindings (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createSampleFindings"


-- | Create a new ThreatIntelSet. ThreatIntelSets consist of known malicious IP addresses. GuardDuty generates findings based on ThreatIntelSets.
createThreatIntelSet :: forall eff. GuardDuty.Service -> GuardDutyTypes.CreateThreatIntelSetRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.CreateThreatIntelSetResponse
createThreatIntelSet (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createThreatIntelSet"


-- | Declines invitations sent to the current member account by AWS account specified by their account IDs.
declineInvitations :: forall eff. GuardDuty.Service -> GuardDutyTypes.DeclineInvitationsRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.DeclineInvitationsResponse
declineInvitations (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "declineInvitations"


-- | Deletes a Amazon GuardDuty detector specified by the detector ID.
deleteDetector :: forall eff. GuardDuty.Service -> GuardDutyTypes.DeleteDetectorRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.DeleteDetectorResponse
deleteDetector (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteDetector"


-- | Deletes the IPSet specified by the IPSet ID.
deleteIPSet :: forall eff. GuardDuty.Service -> GuardDutyTypes.DeleteIPSetRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.DeleteIPSetResponse
deleteIPSet (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteIPSet"


-- | Deletes invitations sent to the current member account by AWS accounts specified by their account IDs.
deleteInvitations :: forall eff. GuardDuty.Service -> GuardDutyTypes.DeleteInvitationsRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.DeleteInvitationsResponse
deleteInvitations (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteInvitations"


-- | Deletes GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.
deleteMembers :: forall eff. GuardDuty.Service -> GuardDutyTypes.DeleteMembersRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.DeleteMembersResponse
deleteMembers (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteMembers"


-- | Deletes ThreatIntelSet specified by the ThreatIntelSet ID.
deleteThreatIntelSet :: forall eff. GuardDuty.Service -> GuardDutyTypes.DeleteThreatIntelSetRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.DeleteThreatIntelSetResponse
deleteThreatIntelSet (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteThreatIntelSet"


-- | Disassociates the current GuardDuty member account from its master account.
disassociateFromMasterAccount :: forall eff. GuardDuty.Service -> GuardDutyTypes.DisassociateFromMasterAccountRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.DisassociateFromMasterAccountResponse
disassociateFromMasterAccount (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "disassociateFromMasterAccount"


-- | Disassociates GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.
disassociateMembers :: forall eff. GuardDuty.Service -> GuardDutyTypes.DisassociateMembersRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.DisassociateMembersResponse
disassociateMembers (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "disassociateMembers"


-- | Retrieves an Amazon GuardDuty detector specified by the detectorId.
getDetector :: forall eff. GuardDuty.Service -> GuardDutyTypes.GetDetectorRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.GetDetectorResponse
getDetector (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getDetector"


-- | Describes Amazon GuardDuty findings specified by finding IDs.
getFindings :: forall eff. GuardDuty.Service -> GuardDutyTypes.GetFindingsRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.GetFindingsResponse
getFindings (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getFindings"


-- | Lists Amazon GuardDuty findings' statistics for the specified detector ID.
getFindingsStatistics :: forall eff. GuardDuty.Service -> GuardDutyTypes.GetFindingsStatisticsRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.GetFindingsStatisticsResponse
getFindingsStatistics (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getFindingsStatistics"


-- | Retrieves the IPSet specified by the IPSet ID.
getIPSet :: forall eff. GuardDuty.Service -> GuardDutyTypes.GetIPSetRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.GetIPSetResponse
getIPSet (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getIPSet"


-- | Returns the count of all GuardDuty membership invitations that were sent to the current member account except the currently accepted invitation.
getInvitationsCount :: forall eff. GuardDuty.Service -> GuardDutyTypes.GetInvitationsCountRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.GetInvitationsCountResponse
getInvitationsCount (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getInvitationsCount"


-- | Provides the details for the GuardDuty master account to the current GuardDuty member account.
getMasterAccount :: forall eff. GuardDuty.Service -> GuardDutyTypes.GetMasterAccountRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.GetMasterAccountResponse
getMasterAccount (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getMasterAccount"


-- | Retrieves GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.
getMembers :: forall eff. GuardDuty.Service -> GuardDutyTypes.GetMembersRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.GetMembersResponse
getMembers (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getMembers"


-- | Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet ID.
getThreatIntelSet :: forall eff. GuardDuty.Service -> GuardDutyTypes.GetThreatIntelSetRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.GetThreatIntelSetResponse
getThreatIntelSet (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getThreatIntelSet"


-- | Invites other AWS accounts (created as members of the current AWS account by CreateMembers) to enable GuardDuty and allow the current AWS account to view and manage these accounts' GuardDuty findings on their behalf as the master account.
inviteMembers :: forall eff. GuardDuty.Service -> GuardDutyTypes.InviteMembersRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.InviteMembersResponse
inviteMembers (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "inviteMembers"


-- | Lists detectorIds of all the existing Amazon GuardDuty detector resources.
listDetectors :: forall eff. GuardDuty.Service -> GuardDutyTypes.ListDetectorsRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.ListDetectorsResponse
listDetectors (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listDetectors"


-- | Lists Amazon GuardDuty findings for the specified detector ID.
listFindings :: forall eff. GuardDuty.Service -> GuardDutyTypes.ListFindingsRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.ListFindingsResponse
listFindings (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listFindings"


-- | Lists the IPSets of the GuardDuty service specified by the detector ID.
listIPSets :: forall eff. GuardDuty.Service -> GuardDutyTypes.ListIPSetsRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.ListIPSetsResponse
listIPSets (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listIPSets"


-- | Lists all GuardDuty membership invitations that were sent to the current AWS account.
listInvitations :: forall eff. GuardDuty.Service -> GuardDutyTypes.ListInvitationsRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.ListInvitationsResponse
listInvitations (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listInvitations"


-- | Lists details about all member accounts for the current GuardDuty master account.
listMembers :: forall eff. GuardDuty.Service -> GuardDutyTypes.ListMembersRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.ListMembersResponse
listMembers (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listMembers"


-- | Lists the ThreatIntelSets of the GuardDuty service specified by the detector ID.
listThreatIntelSets :: forall eff. GuardDuty.Service -> GuardDutyTypes.ListThreatIntelSetsRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.ListThreatIntelSetsResponse
listThreatIntelSets (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listThreatIntelSets"


-- | Re-enables GuardDuty to monitor findings of the member accounts specified by the account IDs. A master GuardDuty account can run this command after disabling GuardDuty from monitoring these members' findings by running StopMonitoringMembers.
startMonitoringMembers :: forall eff. GuardDuty.Service -> GuardDutyTypes.StartMonitoringMembersRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.StartMonitoringMembersResponse
startMonitoringMembers (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "startMonitoringMembers"


-- | Disables GuardDuty from monitoring findings of the member accounts specified by the account IDs. After running this command, a master GuardDuty account can run StartMonitoringMembers to re-enable GuardDuty to monitor these members' findings.
stopMonitoringMembers :: forall eff. GuardDuty.Service -> GuardDutyTypes.StopMonitoringMembersRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.StopMonitoringMembersResponse
stopMonitoringMembers (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "stopMonitoringMembers"


-- | Unarchives Amazon GuardDuty findings specified by the list of finding IDs.
unarchiveFindings :: forall eff. GuardDuty.Service -> GuardDutyTypes.UnarchiveFindingsRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.UnarchiveFindingsResponse
unarchiveFindings (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "unarchiveFindings"


-- | Updates an Amazon GuardDuty detector specified by the detectorId.
updateDetector :: forall eff. GuardDuty.Service -> GuardDutyTypes.UpdateDetectorRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.UpdateDetectorResponse
updateDetector (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateDetector"


-- | Marks specified Amazon GuardDuty findings as useful or not useful.
updateFindingsFeedback :: forall eff. GuardDuty.Service -> GuardDutyTypes.UpdateFindingsFeedbackRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.UpdateFindingsFeedbackResponse
updateFindingsFeedback (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateFindingsFeedback"


-- | Updates the IPSet specified by the IPSet ID.
updateIPSet :: forall eff. GuardDuty.Service -> GuardDutyTypes.UpdateIPSetRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.UpdateIPSetResponse
updateIPSet (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateIPSet"


-- | Updates the ThreatIntelSet specified by ThreatIntelSet ID.
updateThreatIntelSet :: forall eff. GuardDuty.Service -> GuardDutyTypes.UpdateThreatIntelSetRequest -> Aff (exception :: EXCEPTION | eff) GuardDutyTypes.UpdateThreatIntelSetResponse
updateThreatIntelSet (GuardDuty.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateThreatIntelSet"
