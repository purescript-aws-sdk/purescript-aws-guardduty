## Module AWS.GuardDuty.Requests

#### `acceptInvitation`

``` purescript
acceptInvitation :: forall eff. Service -> AcceptInvitationRequest -> Aff (exception :: EXCEPTION | eff) AcceptInvitationResponse
```

Accepts the invitation to be monitored by a master GuardDuty account.

#### `archiveFindings`

``` purescript
archiveFindings :: forall eff. Service -> ArchiveFindingsRequest -> Aff (exception :: EXCEPTION | eff) ArchiveFindingsResponse
```

Archives Amazon GuardDuty findings specified by the list of finding IDs.

#### `createDetector`

``` purescript
createDetector :: forall eff. Service -> CreateDetectorRequest -> Aff (exception :: EXCEPTION | eff) CreateDetectorResponse
```

Creates a single Amazon GuardDuty detector. A detector is an object that represents the GuardDuty service. A detector must be created in order for GuardDuty to become operational.

#### `createIPSet`

``` purescript
createIPSet :: forall eff. Service -> CreateIPSetRequest -> Aff (exception :: EXCEPTION | eff) CreateIPSetResponse
```

Creates a new IPSet - a list of trusted IP addresses that have been whitelisted for secure communication with AWS infrastructure and applications.

#### `createMembers`

``` purescript
createMembers :: forall eff. Service -> CreateMembersRequest -> Aff (exception :: EXCEPTION | eff) CreateMembersResponse
```

Creates member accounts of the current AWS account by specifying a list of AWS account IDs. The current AWS account can then invite these members to manage GuardDuty in their accounts.

#### `createSampleFindings`

``` purescript
createSampleFindings :: forall eff. Service -> CreateSampleFindingsRequest -> Aff (exception :: EXCEPTION | eff) CreateSampleFindingsResponse
```

Generates example findings of types specified by the list of finding types. If 'NULL' is specified for findingTypes, the API generates example findings of all supported finding types.

#### `createThreatIntelSet`

``` purescript
createThreatIntelSet :: forall eff. Service -> CreateThreatIntelSetRequest -> Aff (exception :: EXCEPTION | eff) CreateThreatIntelSetResponse
```

Create a new ThreatIntelSet. ThreatIntelSets consist of known malicious IP addresses. GuardDuty generates findings based on ThreatIntelSets.

#### `declineInvitations`

``` purescript
declineInvitations :: forall eff. Service -> DeclineInvitationsRequest -> Aff (exception :: EXCEPTION | eff) DeclineInvitationsResponse
```

Declines invitations sent to the current member account by AWS account specified by their account IDs.

#### `deleteDetector`

``` purescript
deleteDetector :: forall eff. Service -> DeleteDetectorRequest -> Aff (exception :: EXCEPTION | eff) DeleteDetectorResponse
```

Deletes a Amazon GuardDuty detector specified by the detector ID.

#### `deleteIPSet`

``` purescript
deleteIPSet :: forall eff. Service -> DeleteIPSetRequest -> Aff (exception :: EXCEPTION | eff) DeleteIPSetResponse
```

Deletes the IPSet specified by the IPSet ID.

#### `deleteInvitations`

``` purescript
deleteInvitations :: forall eff. Service -> DeleteInvitationsRequest -> Aff (exception :: EXCEPTION | eff) DeleteInvitationsResponse
```

Deletes invitations sent to the current member account by AWS accounts specified by their account IDs.

#### `deleteMembers`

``` purescript
deleteMembers :: forall eff. Service -> DeleteMembersRequest -> Aff (exception :: EXCEPTION | eff) DeleteMembersResponse
```

Deletes GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.

#### `deleteThreatIntelSet`

``` purescript
deleteThreatIntelSet :: forall eff. Service -> DeleteThreatIntelSetRequest -> Aff (exception :: EXCEPTION | eff) DeleteThreatIntelSetResponse
```

Deletes ThreatIntelSet specified by the ThreatIntelSet ID.

#### `disassociateFromMasterAccount`

``` purescript
disassociateFromMasterAccount :: forall eff. Service -> DisassociateFromMasterAccountRequest -> Aff (exception :: EXCEPTION | eff) DisassociateFromMasterAccountResponse
```

Disassociates the current GuardDuty member account from its master account.

#### `disassociateMembers`

``` purescript
disassociateMembers :: forall eff. Service -> DisassociateMembersRequest -> Aff (exception :: EXCEPTION | eff) DisassociateMembersResponse
```

Disassociates GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.

#### `getDetector`

``` purescript
getDetector :: forall eff. Service -> GetDetectorRequest -> Aff (exception :: EXCEPTION | eff) GetDetectorResponse
```

Retrieves an Amazon GuardDuty detector specified by the detectorId.

#### `getFindings`

``` purescript
getFindings :: forall eff. Service -> GetFindingsRequest -> Aff (exception :: EXCEPTION | eff) GetFindingsResponse
```

Describes Amazon GuardDuty findings specified by finding IDs.

#### `getFindingsStatistics`

``` purescript
getFindingsStatistics :: forall eff. Service -> GetFindingsStatisticsRequest -> Aff (exception :: EXCEPTION | eff) GetFindingsStatisticsResponse
```

Lists Amazon GuardDuty findings' statistics for the specified detector ID.

#### `getIPSet`

``` purescript
getIPSet :: forall eff. Service -> GetIPSetRequest -> Aff (exception :: EXCEPTION | eff) GetIPSetResponse
```

Retrieves the IPSet specified by the IPSet ID.

#### `getInvitationsCount`

``` purescript
getInvitationsCount :: forall eff. Service -> GetInvitationsCountRequest -> Aff (exception :: EXCEPTION | eff) GetInvitationsCountResponse
```

Returns the count of all GuardDuty membership invitations that were sent to the current member account except the currently accepted invitation.

#### `getMasterAccount`

``` purescript
getMasterAccount :: forall eff. Service -> GetMasterAccountRequest -> Aff (exception :: EXCEPTION | eff) GetMasterAccountResponse
```

Provides the details for the GuardDuty master account to the current GuardDuty member account.

#### `getMembers`

``` purescript
getMembers :: forall eff. Service -> GetMembersRequest -> Aff (exception :: EXCEPTION | eff) GetMembersResponse
```

Retrieves GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.

#### `getThreatIntelSet`

``` purescript
getThreatIntelSet :: forall eff. Service -> GetThreatIntelSetRequest -> Aff (exception :: EXCEPTION | eff) GetThreatIntelSetResponse
```

Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet ID.

#### `inviteMembers`

``` purescript
inviteMembers :: forall eff. Service -> InviteMembersRequest -> Aff (exception :: EXCEPTION | eff) InviteMembersResponse
```

Invites other AWS accounts (created as members of the current AWS account by CreateMembers) to enable GuardDuty and allow the current AWS account to view and manage these accounts' GuardDuty findings on their behalf as the master account.

#### `listDetectors`

``` purescript
listDetectors :: forall eff. Service -> ListDetectorsRequest -> Aff (exception :: EXCEPTION | eff) ListDetectorsResponse
```

Lists detectorIds of all the existing Amazon GuardDuty detector resources.

#### `listFindings`

``` purescript
listFindings :: forall eff. Service -> ListFindingsRequest -> Aff (exception :: EXCEPTION | eff) ListFindingsResponse
```

Lists Amazon GuardDuty findings for the specified detector ID.

#### `listIPSets`

``` purescript
listIPSets :: forall eff. Service -> ListIPSetsRequest -> Aff (exception :: EXCEPTION | eff) ListIPSetsResponse
```

Lists the IPSets of the GuardDuty service specified by the detector ID.

#### `listInvitations`

``` purescript
listInvitations :: forall eff. Service -> ListInvitationsRequest -> Aff (exception :: EXCEPTION | eff) ListInvitationsResponse
```

Lists all GuardDuty membership invitations that were sent to the current AWS account.

#### `listMembers`

``` purescript
listMembers :: forall eff. Service -> ListMembersRequest -> Aff (exception :: EXCEPTION | eff) ListMembersResponse
```

Lists details about all member accounts for the current GuardDuty master account.

#### `listThreatIntelSets`

``` purescript
listThreatIntelSets :: forall eff. Service -> ListThreatIntelSetsRequest -> Aff (exception :: EXCEPTION | eff) ListThreatIntelSetsResponse
```

Lists the ThreatIntelSets of the GuardDuty service specified by the detector ID.

#### `startMonitoringMembers`

``` purescript
startMonitoringMembers :: forall eff. Service -> StartMonitoringMembersRequest -> Aff (exception :: EXCEPTION | eff) StartMonitoringMembersResponse
```

Re-enables GuardDuty to monitor findings of the member accounts specified by the account IDs. A master GuardDuty account can run this command after disabling GuardDuty from monitoring these members' findings by running StopMonitoringMembers.

#### `stopMonitoringMembers`

``` purescript
stopMonitoringMembers :: forall eff. Service -> StopMonitoringMembersRequest -> Aff (exception :: EXCEPTION | eff) StopMonitoringMembersResponse
```

Disables GuardDuty from monitoring findings of the member accounts specified by the account IDs. After running this command, a master GuardDuty account can run StartMonitoringMembers to re-enable GuardDuty to monitor these members' findings.

#### `unarchiveFindings`

``` purescript
unarchiveFindings :: forall eff. Service -> UnarchiveFindingsRequest -> Aff (exception :: EXCEPTION | eff) UnarchiveFindingsResponse
```

Unarchives Amazon GuardDuty findings specified by the list of finding IDs.

#### `updateDetector`

``` purescript
updateDetector :: forall eff. Service -> UpdateDetectorRequest -> Aff (exception :: EXCEPTION | eff) UpdateDetectorResponse
```

Updates an Amazon GuardDuty detector specified by the detectorId.

#### `updateFindingsFeedback`

``` purescript
updateFindingsFeedback :: forall eff. Service -> UpdateFindingsFeedbackRequest -> Aff (exception :: EXCEPTION | eff) UpdateFindingsFeedbackResponse
```

Marks specified Amazon GuardDuty findings as useful or not useful.

#### `updateIPSet`

``` purescript
updateIPSet :: forall eff. Service -> UpdateIPSetRequest -> Aff (exception :: EXCEPTION | eff) UpdateIPSetResponse
```

Updates the IPSet specified by the IPSet ID.

#### `updateThreatIntelSet`

``` purescript
updateThreatIntelSet :: forall eff. Service -> UpdateThreatIntelSetRequest -> Aff (exception :: EXCEPTION | eff) UpdateThreatIntelSetResponse
```

Updates the ThreatIntelSet specified by ThreatIntelSet ID.


