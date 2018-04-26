## Module AWS.GuardDuty.Types

#### `options`

``` purescript
options :: Options
```

#### `AcceptInvitationRequest`

``` purescript
newtype AcceptInvitationRequest
  = AcceptInvitationRequest { "DetectorId" :: String, "InvitationId" :: Maybe (InvitationId), "MasterId" :: Maybe (MasterId) }
```

AcceptInvitation request body.

##### Instances
``` purescript
Newtype AcceptInvitationRequest _
Generic AcceptInvitationRequest _
Show AcceptInvitationRequest
Decode AcceptInvitationRequest
Encode AcceptInvitationRequest
```

#### `newAcceptInvitationRequest`

``` purescript
newAcceptInvitationRequest :: String -> AcceptInvitationRequest
```

Constructs AcceptInvitationRequest from required parameters

#### `newAcceptInvitationRequest'`

``` purescript
newAcceptInvitationRequest' :: String -> ({ "DetectorId" :: String, "InvitationId" :: Maybe (InvitationId), "MasterId" :: Maybe (MasterId) } -> { "DetectorId" :: String, "InvitationId" :: Maybe (InvitationId), "MasterId" :: Maybe (MasterId) }) -> AcceptInvitationRequest
```

Constructs AcceptInvitationRequest's fields from required parameters

#### `AcceptInvitationResponse`

``` purescript
newtype AcceptInvitationResponse
  = AcceptInvitationResponse NoArguments
```

##### Instances
``` purescript
Newtype AcceptInvitationResponse _
Generic AcceptInvitationResponse _
Show AcceptInvitationResponse
Decode AcceptInvitationResponse
Encode AcceptInvitationResponse
```

#### `AccessKeyDetails`

``` purescript
newtype AccessKeyDetails
  = AccessKeyDetails { "AccessKeyId" :: Maybe (String), "PrincipalId" :: Maybe (String), "UserName" :: Maybe (String), "UserType" :: Maybe (String) }
```

The IAM access key details (IAM user information) of a user that engaged in the activity that prompted GuardDuty to generate a finding.

##### Instances
``` purescript
Newtype AccessKeyDetails _
Generic AccessKeyDetails _
Show AccessKeyDetails
Decode AccessKeyDetails
Encode AccessKeyDetails
```

#### `newAccessKeyDetails`

``` purescript
newAccessKeyDetails :: AccessKeyDetails
```

Constructs AccessKeyDetails from required parameters

#### `newAccessKeyDetails'`

``` purescript
newAccessKeyDetails' :: ({ "AccessKeyId" :: Maybe (String), "PrincipalId" :: Maybe (String), "UserName" :: Maybe (String), "UserType" :: Maybe (String) } -> { "AccessKeyId" :: Maybe (String), "PrincipalId" :: Maybe (String), "UserName" :: Maybe (String), "UserType" :: Maybe (String) }) -> AccessKeyDetails
```

Constructs AccessKeyDetails's fields from required parameters

#### `AccountDetail`

``` purescript
newtype AccountDetail
  = AccountDetail { "AccountId" :: Maybe (AccountId), "Email" :: Maybe (Email) }
```

An object containing the member's accountId and email address.

##### Instances
``` purescript
Newtype AccountDetail _
Generic AccountDetail _
Show AccountDetail
Decode AccountDetail
Encode AccountDetail
```

#### `newAccountDetail`

``` purescript
newAccountDetail :: AccountDetail
```

Constructs AccountDetail from required parameters

#### `newAccountDetail'`

``` purescript
newAccountDetail' :: ({ "AccountId" :: Maybe (AccountId), "Email" :: Maybe (Email) } -> { "AccountId" :: Maybe (AccountId), "Email" :: Maybe (Email) }) -> AccountDetail
```

Constructs AccountDetail's fields from required parameters

#### `AccountDetails`

``` purescript
newtype AccountDetails
  = AccountDetails (Array AccountDetail)
```

A list of account/email pairs.

##### Instances
``` purescript
Newtype AccountDetails _
Generic AccountDetails _
Show AccountDetails
Decode AccountDetails
Encode AccountDetails
```

#### `AccountId`

``` purescript
newtype AccountId
  = AccountId String
```

AWS account ID.

##### Instances
``` purescript
Newtype AccountId _
Generic AccountId _
Show AccountId
Decode AccountId
Encode AccountId
```

#### `AccountIds`

``` purescript
newtype AccountIds
  = AccountIds (Array String)
```

A list of account IDs.

##### Instances
``` purescript
Newtype AccountIds _
Generic AccountIds _
Show AccountIds
Decode AccountIds
Encode AccountIds
```

#### `Action`

``` purescript
newtype Action
  = Action { "ActionType" :: Maybe (String), "AwsApiCallAction" :: Maybe (AwsApiCallAction), "DnsRequestAction" :: Maybe (DnsRequestAction), "NetworkConnectionAction" :: Maybe (NetworkConnectionAction), "PortProbeAction" :: Maybe (PortProbeAction) }
```

Information about the activity described in a finding.

##### Instances
``` purescript
Newtype Action _
Generic Action _
Show Action
Decode Action
Encode Action
```

#### `newAction`

``` purescript
newAction :: Action
```

Constructs Action from required parameters

#### `newAction'`

``` purescript
newAction' :: ({ "ActionType" :: Maybe (String), "AwsApiCallAction" :: Maybe (AwsApiCallAction), "DnsRequestAction" :: Maybe (DnsRequestAction), "NetworkConnectionAction" :: Maybe (NetworkConnectionAction), "PortProbeAction" :: Maybe (PortProbeAction) } -> { "ActionType" :: Maybe (String), "AwsApiCallAction" :: Maybe (AwsApiCallAction), "DnsRequestAction" :: Maybe (DnsRequestAction), "NetworkConnectionAction" :: Maybe (NetworkConnectionAction), "PortProbeAction" :: Maybe (PortProbeAction) }) -> Action
```

Constructs Action's fields from required parameters

#### `Activate`

``` purescript
newtype Activate
  = Activate Boolean
```

Whether we should start processing the list immediately or not.

##### Instances
``` purescript
Newtype Activate _
Generic Activate _
Show Activate
Decode Activate
Encode Activate
```

#### `ArchiveFindingsRequest`

``` purescript
newtype ArchiveFindingsRequest
  = ArchiveFindingsRequest { "DetectorId" :: String, "FindingIds" :: Maybe (FindingIds) }
```

ArchiveFindings request body.

##### Instances
``` purescript
Newtype ArchiveFindingsRequest _
Generic ArchiveFindingsRequest _
Show ArchiveFindingsRequest
Decode ArchiveFindingsRequest
Encode ArchiveFindingsRequest
```

#### `newArchiveFindingsRequest`

``` purescript
newArchiveFindingsRequest :: String -> ArchiveFindingsRequest
```

Constructs ArchiveFindingsRequest from required parameters

#### `newArchiveFindingsRequest'`

``` purescript
newArchiveFindingsRequest' :: String -> ({ "DetectorId" :: String, "FindingIds" :: Maybe (FindingIds) } -> { "DetectorId" :: String, "FindingIds" :: Maybe (FindingIds) }) -> ArchiveFindingsRequest
```

Constructs ArchiveFindingsRequest's fields from required parameters

#### `ArchiveFindingsResponse`

``` purescript
newtype ArchiveFindingsResponse
  = ArchiveFindingsResponse NoArguments
```

##### Instances
``` purescript
Newtype ArchiveFindingsResponse _
Generic ArchiveFindingsResponse _
Show ArchiveFindingsResponse
Decode ArchiveFindingsResponse
Encode ArchiveFindingsResponse
```

#### `AwsApiCallAction`

``` purescript
newtype AwsApiCallAction
  = AwsApiCallAction { "Api" :: Maybe (String), "CallerType" :: Maybe (String), "DomainDetails" :: Maybe (DomainDetails), "RemoteIpDetails" :: Maybe (RemoteIpDetails), "ServiceName" :: Maybe (String) }
```

Information about the AWS_API_CALL action described in this finding.

##### Instances
``` purescript
Newtype AwsApiCallAction _
Generic AwsApiCallAction _
Show AwsApiCallAction
Decode AwsApiCallAction
Encode AwsApiCallAction
```

#### `newAwsApiCallAction`

``` purescript
newAwsApiCallAction :: AwsApiCallAction
```

Constructs AwsApiCallAction from required parameters

#### `newAwsApiCallAction'`

``` purescript
newAwsApiCallAction' :: ({ "Api" :: Maybe (String), "CallerType" :: Maybe (String), "DomainDetails" :: Maybe (DomainDetails), "RemoteIpDetails" :: Maybe (RemoteIpDetails), "ServiceName" :: Maybe (String) } -> { "Api" :: Maybe (String), "CallerType" :: Maybe (String), "DomainDetails" :: Maybe (DomainDetails), "RemoteIpDetails" :: Maybe (RemoteIpDetails), "ServiceName" :: Maybe (String) }) -> AwsApiCallAction
```

Constructs AwsApiCallAction's fields from required parameters

#### `BadRequestException`

``` purescript
newtype BadRequestException
  = BadRequestException { "Message" :: Maybe (String), "Type" :: Maybe (String) }
```

Error response object.

##### Instances
``` purescript
Newtype BadRequestException _
Generic BadRequestException _
Show BadRequestException
Decode BadRequestException
Encode BadRequestException
```

#### `newBadRequestException`

``` purescript
newBadRequestException :: BadRequestException
```

Constructs BadRequestException from required parameters

#### `newBadRequestException'`

``` purescript
newBadRequestException' :: ({ "Message" :: Maybe (String), "Type" :: Maybe (String) } -> { "Message" :: Maybe (String), "Type" :: Maybe (String) }) -> BadRequestException
```

Constructs BadRequestException's fields from required parameters

#### `City`

``` purescript
newtype City
  = City { "CityName" :: Maybe (String) }
```

City information of the remote IP address.

##### Instances
``` purescript
Newtype City _
Generic City _
Show City
Decode City
Encode City
```

#### `newCity`

``` purescript
newCity :: City
```

Constructs City from required parameters

#### `newCity'`

``` purescript
newCity' :: ({ "CityName" :: Maybe (String) } -> { "CityName" :: Maybe (String) }) -> City
```

Constructs City's fields from required parameters

#### `Comments`

``` purescript
newtype Comments
  = Comments String
```

Additional feedback about the GuardDuty findings.

##### Instances
``` purescript
Newtype Comments _
Generic Comments _
Show Comments
Decode Comments
Encode Comments
```

#### `Condition`

``` purescript
newtype Condition
  = Condition { "Eq" :: Maybe (Eq), "Gt" :: Maybe (Int), "Gte" :: Maybe (Int), "Lt" :: Maybe (Int), "Lte" :: Maybe (Int), "Neq" :: Maybe (Neq) }
```

Finding attribute (for example, accountId) for which conditions and values must be specified when querying findings.

##### Instances
``` purescript
Newtype Condition _
Generic Condition _
Show Condition
Decode Condition
Encode Condition
```

#### `newCondition`

``` purescript
newCondition :: Condition
```

Constructs Condition from required parameters

#### `newCondition'`

``` purescript
newCondition' :: ({ "Eq" :: Maybe (Eq), "Gt" :: Maybe (Int), "Gte" :: Maybe (Int), "Lt" :: Maybe (Int), "Lte" :: Maybe (Int), "Neq" :: Maybe (Neq) } -> { "Eq" :: Maybe (Eq), "Gt" :: Maybe (Int), "Gte" :: Maybe (Int), "Lt" :: Maybe (Int), "Lte" :: Maybe (Int), "Neq" :: Maybe (Neq) }) -> Condition
```

Constructs Condition's fields from required parameters

#### `CountBySeverityFindingStatistic`

``` purescript
newtype CountBySeverityFindingStatistic
  = CountBySeverityFindingStatistic Int
```

The count of findings for the given severity.

##### Instances
``` purescript
Newtype CountBySeverityFindingStatistic _
Generic CountBySeverityFindingStatistic _
Show CountBySeverityFindingStatistic
Decode CountBySeverityFindingStatistic
Encode CountBySeverityFindingStatistic
```

#### `Country`

``` purescript
newtype Country
  = Country { "CountryCode" :: Maybe (String), "CountryName" :: Maybe (String) }
```

Country information of the remote IP address.

##### Instances
``` purescript
Newtype Country _
Generic Country _
Show Country
Decode Country
Encode Country
```

#### `newCountry`

``` purescript
newCountry :: Country
```

Constructs Country from required parameters

#### `newCountry'`

``` purescript
newCountry' :: ({ "CountryCode" :: Maybe (String), "CountryName" :: Maybe (String) } -> { "CountryCode" :: Maybe (String), "CountryName" :: Maybe (String) }) -> Country
```

Constructs Country's fields from required parameters

#### `CreateDetectorRequest`

``` purescript
newtype CreateDetectorRequest
  = CreateDetectorRequest { "Enable" :: Maybe (Enable) }
```

CreateDetector request body.

##### Instances
``` purescript
Newtype CreateDetectorRequest _
Generic CreateDetectorRequest _
Show CreateDetectorRequest
Decode CreateDetectorRequest
Encode CreateDetectorRequest
```

#### `newCreateDetectorRequest`

``` purescript
newCreateDetectorRequest :: CreateDetectorRequest
```

Constructs CreateDetectorRequest from required parameters

#### `newCreateDetectorRequest'`

``` purescript
newCreateDetectorRequest' :: ({ "Enable" :: Maybe (Enable) } -> { "Enable" :: Maybe (Enable) }) -> CreateDetectorRequest
```

Constructs CreateDetectorRequest's fields from required parameters

#### `CreateDetectorResponse`

``` purescript
newtype CreateDetectorResponse
  = CreateDetectorResponse { "DetectorId" :: Maybe (DetectorId) }
```

##### Instances
``` purescript
Newtype CreateDetectorResponse _
Generic CreateDetectorResponse _
Show CreateDetectorResponse
Decode CreateDetectorResponse
Encode CreateDetectorResponse
```

#### `newCreateDetectorResponse`

``` purescript
newCreateDetectorResponse :: CreateDetectorResponse
```

Constructs CreateDetectorResponse from required parameters

#### `newCreateDetectorResponse'`

``` purescript
newCreateDetectorResponse' :: ({ "DetectorId" :: Maybe (DetectorId) } -> { "DetectorId" :: Maybe (DetectorId) }) -> CreateDetectorResponse
```

Constructs CreateDetectorResponse's fields from required parameters

#### `CreateIPSetRequest`

``` purescript
newtype CreateIPSetRequest
  = CreateIPSetRequest { "Activate" :: Maybe (Activate), "DetectorId" :: String, "Format" :: Maybe (IpSetFormat), "Location" :: Maybe (Location), "Name" :: Maybe (Name) }
```

CreateIPSet request body.

##### Instances
``` purescript
Newtype CreateIPSetRequest _
Generic CreateIPSetRequest _
Show CreateIPSetRequest
Decode CreateIPSetRequest
Encode CreateIPSetRequest
```

#### `newCreateIPSetRequest`

``` purescript
newCreateIPSetRequest :: String -> CreateIPSetRequest
```

Constructs CreateIPSetRequest from required parameters

#### `newCreateIPSetRequest'`

``` purescript
newCreateIPSetRequest' :: String -> ({ "Activate" :: Maybe (Activate), "DetectorId" :: String, "Format" :: Maybe (IpSetFormat), "Location" :: Maybe (Location), "Name" :: Maybe (Name) } -> { "Activate" :: Maybe (Activate), "DetectorId" :: String, "Format" :: Maybe (IpSetFormat), "Location" :: Maybe (Location), "Name" :: Maybe (Name) }) -> CreateIPSetRequest
```

Constructs CreateIPSetRequest's fields from required parameters

#### `CreateIPSetResponse`

``` purescript
newtype CreateIPSetResponse
  = CreateIPSetResponse { "IpSetId" :: Maybe (IpSetId) }
```

##### Instances
``` purescript
Newtype CreateIPSetResponse _
Generic CreateIPSetResponse _
Show CreateIPSetResponse
Decode CreateIPSetResponse
Encode CreateIPSetResponse
```

#### `newCreateIPSetResponse`

``` purescript
newCreateIPSetResponse :: CreateIPSetResponse
```

Constructs CreateIPSetResponse from required parameters

#### `newCreateIPSetResponse'`

``` purescript
newCreateIPSetResponse' :: ({ "IpSetId" :: Maybe (IpSetId) } -> { "IpSetId" :: Maybe (IpSetId) }) -> CreateIPSetResponse
```

Constructs CreateIPSetResponse's fields from required parameters

#### `CreateMembersRequest`

``` purescript
newtype CreateMembersRequest
  = CreateMembersRequest { "AccountDetails" :: Maybe (AccountDetails), "DetectorId" :: String }
```

CreateMembers request body.

##### Instances
``` purescript
Newtype CreateMembersRequest _
Generic CreateMembersRequest _
Show CreateMembersRequest
Decode CreateMembersRequest
Encode CreateMembersRequest
```

#### `newCreateMembersRequest`

``` purescript
newCreateMembersRequest :: String -> CreateMembersRequest
```

Constructs CreateMembersRequest from required parameters

#### `newCreateMembersRequest'`

``` purescript
newCreateMembersRequest' :: String -> ({ "AccountDetails" :: Maybe (AccountDetails), "DetectorId" :: String } -> { "AccountDetails" :: Maybe (AccountDetails), "DetectorId" :: String }) -> CreateMembersRequest
```

Constructs CreateMembersRequest's fields from required parameters

#### `CreateMembersResponse`

``` purescript
newtype CreateMembersResponse
  = CreateMembersResponse { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) }
```

##### Instances
``` purescript
Newtype CreateMembersResponse _
Generic CreateMembersResponse _
Show CreateMembersResponse
Decode CreateMembersResponse
Encode CreateMembersResponse
```

#### `newCreateMembersResponse`

``` purescript
newCreateMembersResponse :: CreateMembersResponse
```

Constructs CreateMembersResponse from required parameters

#### `newCreateMembersResponse'`

``` purescript
newCreateMembersResponse' :: ({ "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) } -> { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) }) -> CreateMembersResponse
```

Constructs CreateMembersResponse's fields from required parameters

#### `CreateSampleFindingsRequest`

``` purescript
newtype CreateSampleFindingsRequest
  = CreateSampleFindingsRequest { "DetectorId" :: String, "FindingTypes" :: Maybe (FindingTypes) }
```

CreateSampleFindings request body.

##### Instances
``` purescript
Newtype CreateSampleFindingsRequest _
Generic CreateSampleFindingsRequest _
Show CreateSampleFindingsRequest
Decode CreateSampleFindingsRequest
Encode CreateSampleFindingsRequest
```

#### `newCreateSampleFindingsRequest`

``` purescript
newCreateSampleFindingsRequest :: String -> CreateSampleFindingsRequest
```

Constructs CreateSampleFindingsRequest from required parameters

#### `newCreateSampleFindingsRequest'`

``` purescript
newCreateSampleFindingsRequest' :: String -> ({ "DetectorId" :: String, "FindingTypes" :: Maybe (FindingTypes) } -> { "DetectorId" :: String, "FindingTypes" :: Maybe (FindingTypes) }) -> CreateSampleFindingsRequest
```

Constructs CreateSampleFindingsRequest's fields from required parameters

#### `CreateSampleFindingsResponse`

``` purescript
newtype CreateSampleFindingsResponse
  = CreateSampleFindingsResponse NoArguments
```

##### Instances
``` purescript
Newtype CreateSampleFindingsResponse _
Generic CreateSampleFindingsResponse _
Show CreateSampleFindingsResponse
Decode CreateSampleFindingsResponse
Encode CreateSampleFindingsResponse
```

#### `CreateThreatIntelSetRequest`

``` purescript
newtype CreateThreatIntelSetRequest
  = CreateThreatIntelSetRequest { "Activate" :: Maybe (Activate), "DetectorId" :: String, "Format" :: Maybe (ThreatIntelSetFormat), "Location" :: Maybe (Location), "Name" :: Maybe (Name) }
```

CreateThreatIntelSet request body.

##### Instances
``` purescript
Newtype CreateThreatIntelSetRequest _
Generic CreateThreatIntelSetRequest _
Show CreateThreatIntelSetRequest
Decode CreateThreatIntelSetRequest
Encode CreateThreatIntelSetRequest
```

#### `newCreateThreatIntelSetRequest`

``` purescript
newCreateThreatIntelSetRequest :: String -> CreateThreatIntelSetRequest
```

Constructs CreateThreatIntelSetRequest from required parameters

#### `newCreateThreatIntelSetRequest'`

``` purescript
newCreateThreatIntelSetRequest' :: String -> ({ "Activate" :: Maybe (Activate), "DetectorId" :: String, "Format" :: Maybe (ThreatIntelSetFormat), "Location" :: Maybe (Location), "Name" :: Maybe (Name) } -> { "Activate" :: Maybe (Activate), "DetectorId" :: String, "Format" :: Maybe (ThreatIntelSetFormat), "Location" :: Maybe (Location), "Name" :: Maybe (Name) }) -> CreateThreatIntelSetRequest
```

Constructs CreateThreatIntelSetRequest's fields from required parameters

#### `CreateThreatIntelSetResponse`

``` purescript
newtype CreateThreatIntelSetResponse
  = CreateThreatIntelSetResponse { "ThreatIntelSetId" :: Maybe (ThreatIntelSetId) }
```

##### Instances
``` purescript
Newtype CreateThreatIntelSetResponse _
Generic CreateThreatIntelSetResponse _
Show CreateThreatIntelSetResponse
Decode CreateThreatIntelSetResponse
Encode CreateThreatIntelSetResponse
```

#### `newCreateThreatIntelSetResponse`

``` purescript
newCreateThreatIntelSetResponse :: CreateThreatIntelSetResponse
```

Constructs CreateThreatIntelSetResponse from required parameters

#### `newCreateThreatIntelSetResponse'`

``` purescript
newCreateThreatIntelSetResponse' :: ({ "ThreatIntelSetId" :: Maybe (ThreatIntelSetId) } -> { "ThreatIntelSetId" :: Maybe (ThreatIntelSetId) }) -> CreateThreatIntelSetResponse
```

Constructs CreateThreatIntelSetResponse's fields from required parameters

#### `CreatedAt`

``` purescript
newtype CreatedAt
  = CreatedAt String
```

The first time a resource was created. The format will be ISO-8601.

##### Instances
``` purescript
Newtype CreatedAt _
Generic CreatedAt _
Show CreatedAt
Decode CreatedAt
Encode CreatedAt
```

#### `DeclineInvitationsRequest`

``` purescript
newtype DeclineInvitationsRequest
  = DeclineInvitationsRequest { "AccountIds" :: Maybe (AccountIds) }
```

DeclineInvitations request body.

##### Instances
``` purescript
Newtype DeclineInvitationsRequest _
Generic DeclineInvitationsRequest _
Show DeclineInvitationsRequest
Decode DeclineInvitationsRequest
Encode DeclineInvitationsRequest
```

#### `newDeclineInvitationsRequest`

``` purescript
newDeclineInvitationsRequest :: DeclineInvitationsRequest
```

Constructs DeclineInvitationsRequest from required parameters

#### `newDeclineInvitationsRequest'`

``` purescript
newDeclineInvitationsRequest' :: ({ "AccountIds" :: Maybe (AccountIds) } -> { "AccountIds" :: Maybe (AccountIds) }) -> DeclineInvitationsRequest
```

Constructs DeclineInvitationsRequest's fields from required parameters

#### `DeclineInvitationsResponse`

``` purescript
newtype DeclineInvitationsResponse
  = DeclineInvitationsResponse { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) }
```

##### Instances
``` purescript
Newtype DeclineInvitationsResponse _
Generic DeclineInvitationsResponse _
Show DeclineInvitationsResponse
Decode DeclineInvitationsResponse
Encode DeclineInvitationsResponse
```

#### `newDeclineInvitationsResponse`

``` purescript
newDeclineInvitationsResponse :: DeclineInvitationsResponse
```

Constructs DeclineInvitationsResponse from required parameters

#### `newDeclineInvitationsResponse'`

``` purescript
newDeclineInvitationsResponse' :: ({ "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) } -> { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) }) -> DeclineInvitationsResponse
```

Constructs DeclineInvitationsResponse's fields from required parameters

#### `DeleteDetectorRequest`

``` purescript
newtype DeleteDetectorRequest
  = DeleteDetectorRequest { "DetectorId" :: String }
```

##### Instances
``` purescript
Newtype DeleteDetectorRequest _
Generic DeleteDetectorRequest _
Show DeleteDetectorRequest
Decode DeleteDetectorRequest
Encode DeleteDetectorRequest
```

#### `newDeleteDetectorRequest`

``` purescript
newDeleteDetectorRequest :: String -> DeleteDetectorRequest
```

Constructs DeleteDetectorRequest from required parameters

#### `newDeleteDetectorRequest'`

``` purescript
newDeleteDetectorRequest' :: String -> ({ "DetectorId" :: String } -> { "DetectorId" :: String }) -> DeleteDetectorRequest
```

Constructs DeleteDetectorRequest's fields from required parameters

#### `DeleteDetectorResponse`

``` purescript
newtype DeleteDetectorResponse
  = DeleteDetectorResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteDetectorResponse _
Generic DeleteDetectorResponse _
Show DeleteDetectorResponse
Decode DeleteDetectorResponse
Encode DeleteDetectorResponse
```

#### `DeleteIPSetRequest`

``` purescript
newtype DeleteIPSetRequest
  = DeleteIPSetRequest { "DetectorId" :: String, "IpSetId" :: String }
```

##### Instances
``` purescript
Newtype DeleteIPSetRequest _
Generic DeleteIPSetRequest _
Show DeleteIPSetRequest
Decode DeleteIPSetRequest
Encode DeleteIPSetRequest
```

#### `newDeleteIPSetRequest`

``` purescript
newDeleteIPSetRequest :: String -> String -> DeleteIPSetRequest
```

Constructs DeleteIPSetRequest from required parameters

#### `newDeleteIPSetRequest'`

``` purescript
newDeleteIPSetRequest' :: String -> String -> ({ "DetectorId" :: String, "IpSetId" :: String } -> { "DetectorId" :: String, "IpSetId" :: String }) -> DeleteIPSetRequest
```

Constructs DeleteIPSetRequest's fields from required parameters

#### `DeleteIPSetResponse`

``` purescript
newtype DeleteIPSetResponse
  = DeleteIPSetResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteIPSetResponse _
Generic DeleteIPSetResponse _
Show DeleteIPSetResponse
Decode DeleteIPSetResponse
Encode DeleteIPSetResponse
```

#### `DeleteInvitationsRequest`

``` purescript
newtype DeleteInvitationsRequest
  = DeleteInvitationsRequest { "AccountIds" :: Maybe (AccountIds) }
```

DeleteInvitations request body.

##### Instances
``` purescript
Newtype DeleteInvitationsRequest _
Generic DeleteInvitationsRequest _
Show DeleteInvitationsRequest
Decode DeleteInvitationsRequest
Encode DeleteInvitationsRequest
```

#### `newDeleteInvitationsRequest`

``` purescript
newDeleteInvitationsRequest :: DeleteInvitationsRequest
```

Constructs DeleteInvitationsRequest from required parameters

#### `newDeleteInvitationsRequest'`

``` purescript
newDeleteInvitationsRequest' :: ({ "AccountIds" :: Maybe (AccountIds) } -> { "AccountIds" :: Maybe (AccountIds) }) -> DeleteInvitationsRequest
```

Constructs DeleteInvitationsRequest's fields from required parameters

#### `DeleteInvitationsResponse`

``` purescript
newtype DeleteInvitationsResponse
  = DeleteInvitationsResponse { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) }
```

##### Instances
``` purescript
Newtype DeleteInvitationsResponse _
Generic DeleteInvitationsResponse _
Show DeleteInvitationsResponse
Decode DeleteInvitationsResponse
Encode DeleteInvitationsResponse
```

#### `newDeleteInvitationsResponse`

``` purescript
newDeleteInvitationsResponse :: DeleteInvitationsResponse
```

Constructs DeleteInvitationsResponse from required parameters

#### `newDeleteInvitationsResponse'`

``` purescript
newDeleteInvitationsResponse' :: ({ "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) } -> { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) }) -> DeleteInvitationsResponse
```

Constructs DeleteInvitationsResponse's fields from required parameters

#### `DeleteMembersRequest`

``` purescript
newtype DeleteMembersRequest
  = DeleteMembersRequest { "AccountIds" :: Maybe (AccountIds), "DetectorId" :: String }
```

DeleteMembers request body.

##### Instances
``` purescript
Newtype DeleteMembersRequest _
Generic DeleteMembersRequest _
Show DeleteMembersRequest
Decode DeleteMembersRequest
Encode DeleteMembersRequest
```

#### `newDeleteMembersRequest`

``` purescript
newDeleteMembersRequest :: String -> DeleteMembersRequest
```

Constructs DeleteMembersRequest from required parameters

#### `newDeleteMembersRequest'`

``` purescript
newDeleteMembersRequest' :: String -> ({ "AccountIds" :: Maybe (AccountIds), "DetectorId" :: String } -> { "AccountIds" :: Maybe (AccountIds), "DetectorId" :: String }) -> DeleteMembersRequest
```

Constructs DeleteMembersRequest's fields from required parameters

#### `DeleteMembersResponse`

``` purescript
newtype DeleteMembersResponse
  = DeleteMembersResponse { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) }
```

##### Instances
``` purescript
Newtype DeleteMembersResponse _
Generic DeleteMembersResponse _
Show DeleteMembersResponse
Decode DeleteMembersResponse
Encode DeleteMembersResponse
```

#### `newDeleteMembersResponse`

``` purescript
newDeleteMembersResponse :: DeleteMembersResponse
```

Constructs DeleteMembersResponse from required parameters

#### `newDeleteMembersResponse'`

``` purescript
newDeleteMembersResponse' :: ({ "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) } -> { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) }) -> DeleteMembersResponse
```

Constructs DeleteMembersResponse's fields from required parameters

#### `DeleteThreatIntelSetRequest`

``` purescript
newtype DeleteThreatIntelSetRequest
  = DeleteThreatIntelSetRequest { "DetectorId" :: String, "ThreatIntelSetId" :: String }
```

##### Instances
``` purescript
Newtype DeleteThreatIntelSetRequest _
Generic DeleteThreatIntelSetRequest _
Show DeleteThreatIntelSetRequest
Decode DeleteThreatIntelSetRequest
Encode DeleteThreatIntelSetRequest
```

#### `newDeleteThreatIntelSetRequest`

``` purescript
newDeleteThreatIntelSetRequest :: String -> String -> DeleteThreatIntelSetRequest
```

Constructs DeleteThreatIntelSetRequest from required parameters

#### `newDeleteThreatIntelSetRequest'`

``` purescript
newDeleteThreatIntelSetRequest' :: String -> String -> ({ "DetectorId" :: String, "ThreatIntelSetId" :: String } -> { "DetectorId" :: String, "ThreatIntelSetId" :: String }) -> DeleteThreatIntelSetRequest
```

Constructs DeleteThreatIntelSetRequest's fields from required parameters

#### `DeleteThreatIntelSetResponse`

``` purescript
newtype DeleteThreatIntelSetResponse
  = DeleteThreatIntelSetResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteThreatIntelSetResponse _
Generic DeleteThreatIntelSetResponse _
Show DeleteThreatIntelSetResponse
Decode DeleteThreatIntelSetResponse
Encode DeleteThreatIntelSetResponse
```

#### `DetectorId`

``` purescript
newtype DetectorId
  = DetectorId String
```

The unique identifier for a detector.

##### Instances
``` purescript
Newtype DetectorId _
Generic DetectorId _
Show DetectorId
Decode DetectorId
Encode DetectorId
```

#### `DetectorIds`

``` purescript
newtype DetectorIds
  = DetectorIds (Array DetectorId)
```

A list of detector Ids.

##### Instances
``` purescript
Newtype DetectorIds _
Generic DetectorIds _
Show DetectorIds
Decode DetectorIds
Encode DetectorIds
```

#### `DetectorStatus`

``` purescript
newtype DetectorStatus
  = DetectorStatus String
```

The status of detector.

##### Instances
``` purescript
Newtype DetectorStatus _
Generic DetectorStatus _
Show DetectorStatus
Decode DetectorStatus
Encode DetectorStatus
```

#### `DisassociateFromMasterAccountRequest`

``` purescript
newtype DisassociateFromMasterAccountRequest
  = DisassociateFromMasterAccountRequest { "DetectorId" :: String }
```

##### Instances
``` purescript
Newtype DisassociateFromMasterAccountRequest _
Generic DisassociateFromMasterAccountRequest _
Show DisassociateFromMasterAccountRequest
Decode DisassociateFromMasterAccountRequest
Encode DisassociateFromMasterAccountRequest
```

#### `newDisassociateFromMasterAccountRequest`

``` purescript
newDisassociateFromMasterAccountRequest :: String -> DisassociateFromMasterAccountRequest
```

Constructs DisassociateFromMasterAccountRequest from required parameters

#### `newDisassociateFromMasterAccountRequest'`

``` purescript
newDisassociateFromMasterAccountRequest' :: String -> ({ "DetectorId" :: String } -> { "DetectorId" :: String }) -> DisassociateFromMasterAccountRequest
```

Constructs DisassociateFromMasterAccountRequest's fields from required parameters

#### `DisassociateFromMasterAccountResponse`

``` purescript
newtype DisassociateFromMasterAccountResponse
  = DisassociateFromMasterAccountResponse NoArguments
```

##### Instances
``` purescript
Newtype DisassociateFromMasterAccountResponse _
Generic DisassociateFromMasterAccountResponse _
Show DisassociateFromMasterAccountResponse
Decode DisassociateFromMasterAccountResponse
Encode DisassociateFromMasterAccountResponse
```

#### `DisassociateMembersRequest`

``` purescript
newtype DisassociateMembersRequest
  = DisassociateMembersRequest { "AccountIds" :: Maybe (AccountIds), "DetectorId" :: String }
```

DisassociateMembers request body.

##### Instances
``` purescript
Newtype DisassociateMembersRequest _
Generic DisassociateMembersRequest _
Show DisassociateMembersRequest
Decode DisassociateMembersRequest
Encode DisassociateMembersRequest
```

#### `newDisassociateMembersRequest`

``` purescript
newDisassociateMembersRequest :: String -> DisassociateMembersRequest
```

Constructs DisassociateMembersRequest from required parameters

#### `newDisassociateMembersRequest'`

``` purescript
newDisassociateMembersRequest' :: String -> ({ "AccountIds" :: Maybe (AccountIds), "DetectorId" :: String } -> { "AccountIds" :: Maybe (AccountIds), "DetectorId" :: String }) -> DisassociateMembersRequest
```

Constructs DisassociateMembersRequest's fields from required parameters

#### `DisassociateMembersResponse`

``` purescript
newtype DisassociateMembersResponse
  = DisassociateMembersResponse { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) }
```

##### Instances
``` purescript
Newtype DisassociateMembersResponse _
Generic DisassociateMembersResponse _
Show DisassociateMembersResponse
Decode DisassociateMembersResponse
Encode DisassociateMembersResponse
```

#### `newDisassociateMembersResponse`

``` purescript
newDisassociateMembersResponse :: DisassociateMembersResponse
```

Constructs DisassociateMembersResponse from required parameters

#### `newDisassociateMembersResponse'`

``` purescript
newDisassociateMembersResponse' :: ({ "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) } -> { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) }) -> DisassociateMembersResponse
```

Constructs DisassociateMembersResponse's fields from required parameters

#### `DnsRequestAction`

``` purescript
newtype DnsRequestAction
  = DnsRequestAction { "Domain" :: Maybe (Domain) }
```

Information about the DNS_REQUEST action described in this finding.

##### Instances
``` purescript
Newtype DnsRequestAction _
Generic DnsRequestAction _
Show DnsRequestAction
Decode DnsRequestAction
Encode DnsRequestAction
```

#### `newDnsRequestAction`

``` purescript
newDnsRequestAction :: DnsRequestAction
```

Constructs DnsRequestAction from required parameters

#### `newDnsRequestAction'`

``` purescript
newDnsRequestAction' :: ({ "Domain" :: Maybe (Domain) } -> { "Domain" :: Maybe (Domain) }) -> DnsRequestAction
```

Constructs DnsRequestAction's fields from required parameters

#### `Domain`

``` purescript
newtype Domain
  = Domain String
```

A domain name.

##### Instances
``` purescript
Newtype Domain _
Generic Domain _
Show Domain
Decode Domain
Encode Domain
```

#### `DomainDetails`

``` purescript
newtype DomainDetails
  = DomainDetails NoArguments
```

Domain information for the AWS API call.

##### Instances
``` purescript
Newtype DomainDetails _
Generic DomainDetails _
Show DomainDetails
Decode DomainDetails
Encode DomainDetails
```

#### `Email`

``` purescript
newtype Email
  = Email String
```

Member account's email address.

##### Instances
``` purescript
Newtype Email _
Generic Email _
Show Email
Decode Email
Encode Email
```

#### `Enable`

``` purescript
newtype Enable
  = Enable Boolean
```

A boolean value that specifies whether the detector is to be enabled.

##### Instances
``` purescript
Newtype Enable _
Generic Enable _
Show Enable
Decode Enable
Encode Enable
```

#### `Eq`

``` purescript
newtype Eq
  = Eq (Array String)
```

Represents the equal condition to be applied to a single field when querying for findings.

##### Instances
``` purescript
Newtype Eq _
Generic Eq _
Show Eq
Decode Eq
Encode Eq
```

#### `ErrorResponse`

``` purescript
newtype ErrorResponse
  = ErrorResponse { "Message" :: Maybe (String), "Type" :: Maybe (String) }
```

Error response object.

##### Instances
``` purescript
Newtype ErrorResponse _
Generic ErrorResponse _
Show ErrorResponse
Decode ErrorResponse
Encode ErrorResponse
```

#### `newErrorResponse`

``` purescript
newErrorResponse :: ErrorResponse
```

Constructs ErrorResponse from required parameters

#### `newErrorResponse'`

``` purescript
newErrorResponse' :: ({ "Message" :: Maybe (String), "Type" :: Maybe (String) } -> { "Message" :: Maybe (String), "Type" :: Maybe (String) }) -> ErrorResponse
```

Constructs ErrorResponse's fields from required parameters

#### `Feedback`

``` purescript
newtype Feedback
  = Feedback String
```

Finding Feedback Value

##### Instances
``` purescript
Newtype Feedback _
Generic Feedback _
Show Feedback
Decode Feedback
Encode Feedback
```

#### `Finding`

``` purescript
newtype Finding
  = Finding { "AccountId" :: Maybe (String), "Arn" :: Maybe (String), "Confidence" :: Maybe (Number), "CreatedAt" :: Maybe (CreatedAt), "Description" :: Maybe (String), "Id" :: Maybe (String), "Partition" :: Maybe (String), "Region" :: Maybe (String), "Resource" :: Maybe (Resource), "SchemaVersion" :: Maybe (String), "Service" :: Maybe (Service), "Severity" :: Maybe (Number), "Title" :: Maybe (String), "Type" :: Maybe (String), "UpdatedAt" :: Maybe (UpdatedAt) }
```

Representation of a abnormal or suspicious activity.

##### Instances
``` purescript
Newtype Finding _
Generic Finding _
Show Finding
Decode Finding
Encode Finding
```

#### `newFinding`

``` purescript
newFinding :: Finding
```

Constructs Finding from required parameters

#### `newFinding'`

``` purescript
newFinding' :: ({ "AccountId" :: Maybe (String), "Arn" :: Maybe (String), "Confidence" :: Maybe (Number), "CreatedAt" :: Maybe (CreatedAt), "Description" :: Maybe (String), "Id" :: Maybe (String), "Partition" :: Maybe (String), "Region" :: Maybe (String), "Resource" :: Maybe (Resource), "SchemaVersion" :: Maybe (String), "Service" :: Maybe (Service), "Severity" :: Maybe (Number), "Title" :: Maybe (String), "Type" :: Maybe (String), "UpdatedAt" :: Maybe (UpdatedAt) } -> { "AccountId" :: Maybe (String), "Arn" :: Maybe (String), "Confidence" :: Maybe (Number), "CreatedAt" :: Maybe (CreatedAt), "Description" :: Maybe (String), "Id" :: Maybe (String), "Partition" :: Maybe (String), "Region" :: Maybe (String), "Resource" :: Maybe (Resource), "SchemaVersion" :: Maybe (String), "Service" :: Maybe (Service), "Severity" :: Maybe (Number), "Title" :: Maybe (String), "Type" :: Maybe (String), "UpdatedAt" :: Maybe (UpdatedAt) }) -> Finding
```

Constructs Finding's fields from required parameters

#### `FindingCriteria`

``` purescript
newtype FindingCriteria
  = FindingCriteria { "Criterion" :: Maybe (MapOfCondition) }
```

Represents the criteria used for querying findings.

##### Instances
``` purescript
Newtype FindingCriteria _
Generic FindingCriteria _
Show FindingCriteria
Decode FindingCriteria
Encode FindingCriteria
```

#### `newFindingCriteria`

``` purescript
newFindingCriteria :: FindingCriteria
```

Constructs FindingCriteria from required parameters

#### `newFindingCriteria'`

``` purescript
newFindingCriteria' :: ({ "Criterion" :: Maybe (MapOfCondition) } -> { "Criterion" :: Maybe (MapOfCondition) }) -> FindingCriteria
```

Constructs FindingCriteria's fields from required parameters

#### `FindingId`

``` purescript
newtype FindingId
  = FindingId String
```

The unique identifier for the Finding

##### Instances
``` purescript
Newtype FindingId _
Generic FindingId _
Show FindingId
Decode FindingId
Encode FindingId
```

#### `FindingIds`

``` purescript
newtype FindingIds
  = FindingIds (Array FindingId)
```

The list of the Findings.

##### Instances
``` purescript
Newtype FindingIds _
Generic FindingIds _
Show FindingIds
Decode FindingIds
Encode FindingIds
```

#### `FindingStatisticType`

``` purescript
newtype FindingStatisticType
  = FindingStatisticType String
```

The types of finding statistics.

##### Instances
``` purescript
Newtype FindingStatisticType _
Generic FindingStatisticType _
Show FindingStatisticType
Decode FindingStatisticType
Encode FindingStatisticType
```

#### `FindingStatisticTypes`

``` purescript
newtype FindingStatisticTypes
  = FindingStatisticTypes (Array FindingStatisticType)
```

The list of the finding statistics.

##### Instances
``` purescript
Newtype FindingStatisticTypes _
Generic FindingStatisticTypes _
Show FindingStatisticTypes
Decode FindingStatisticTypes
Encode FindingStatisticTypes
```

#### `FindingStatistics`

``` purescript
newtype FindingStatistics
  = FindingStatistics { "CountBySeverity" :: Maybe (MapOfCountBySeverityFindingStatistic) }
```

Finding statistics object.

##### Instances
``` purescript
Newtype FindingStatistics _
Generic FindingStatistics _
Show FindingStatistics
Decode FindingStatistics
Encode FindingStatistics
```

#### `newFindingStatistics`

``` purescript
newFindingStatistics :: FindingStatistics
```

Constructs FindingStatistics from required parameters

#### `newFindingStatistics'`

``` purescript
newFindingStatistics' :: ({ "CountBySeverity" :: Maybe (MapOfCountBySeverityFindingStatistic) } -> { "CountBySeverity" :: Maybe (MapOfCountBySeverityFindingStatistic) }) -> FindingStatistics
```

Constructs FindingStatistics's fields from required parameters

#### `FindingType`

``` purescript
newtype FindingType
  = FindingType String
```

The finding type for the finding

##### Instances
``` purescript
Newtype FindingType _
Generic FindingType _
Show FindingType
Decode FindingType
Encode FindingType
```

#### `FindingTypes`

``` purescript
newtype FindingTypes
  = FindingTypes (Array FindingType)
```

The list of the finding types.

##### Instances
``` purescript
Newtype FindingTypes _
Generic FindingTypes _
Show FindingTypes
Decode FindingTypes
Encode FindingTypes
```

#### `Findings`

``` purescript
newtype Findings
  = Findings (Array Finding)
```

A list of findings.

##### Instances
``` purescript
Newtype Findings _
Generic Findings _
Show Findings
Decode Findings
Encode Findings
```

#### `GeoLocation`

``` purescript
newtype GeoLocation
  = GeoLocation { "Lat" :: Maybe (Number), "Lon" :: Maybe (Number) }
```

Location information of the remote IP address.

##### Instances
``` purescript
Newtype GeoLocation _
Generic GeoLocation _
Show GeoLocation
Decode GeoLocation
Encode GeoLocation
```

#### `newGeoLocation`

``` purescript
newGeoLocation :: GeoLocation
```

Constructs GeoLocation from required parameters

#### `newGeoLocation'`

``` purescript
newGeoLocation' :: ({ "Lat" :: Maybe (Number), "Lon" :: Maybe (Number) } -> { "Lat" :: Maybe (Number), "Lon" :: Maybe (Number) }) -> GeoLocation
```

Constructs GeoLocation's fields from required parameters

#### `GetDetectorRequest`

``` purescript
newtype GetDetectorRequest
  = GetDetectorRequest { "DetectorId" :: String }
```

##### Instances
``` purescript
Newtype GetDetectorRequest _
Generic GetDetectorRequest _
Show GetDetectorRequest
Decode GetDetectorRequest
Encode GetDetectorRequest
```

#### `newGetDetectorRequest`

``` purescript
newGetDetectorRequest :: String -> GetDetectorRequest
```

Constructs GetDetectorRequest from required parameters

#### `newGetDetectorRequest'`

``` purescript
newGetDetectorRequest' :: String -> ({ "DetectorId" :: String } -> { "DetectorId" :: String }) -> GetDetectorRequest
```

Constructs GetDetectorRequest's fields from required parameters

#### `GetDetectorResponse`

``` purescript
newtype GetDetectorResponse
  = GetDetectorResponse { "CreatedAt" :: Maybe (CreatedAt), "ServiceRole" :: Maybe (ServiceRole), "Status" :: Maybe (DetectorStatus), "UpdatedAt" :: Maybe (UpdatedAt) }
```

##### Instances
``` purescript
Newtype GetDetectorResponse _
Generic GetDetectorResponse _
Show GetDetectorResponse
Decode GetDetectorResponse
Encode GetDetectorResponse
```

#### `newGetDetectorResponse`

``` purescript
newGetDetectorResponse :: GetDetectorResponse
```

Constructs GetDetectorResponse from required parameters

#### `newGetDetectorResponse'`

``` purescript
newGetDetectorResponse' :: ({ "CreatedAt" :: Maybe (CreatedAt), "ServiceRole" :: Maybe (ServiceRole), "Status" :: Maybe (DetectorStatus), "UpdatedAt" :: Maybe (UpdatedAt) } -> { "CreatedAt" :: Maybe (CreatedAt), "ServiceRole" :: Maybe (ServiceRole), "Status" :: Maybe (DetectorStatus), "UpdatedAt" :: Maybe (UpdatedAt) }) -> GetDetectorResponse
```

Constructs GetDetectorResponse's fields from required parameters

#### `GetFindingsRequest`

``` purescript
newtype GetFindingsRequest
  = GetFindingsRequest { "DetectorId" :: String, "FindingIds" :: Maybe (FindingIds), "SortCriteria" :: Maybe (SortCriteria) }
```

GetFindings request body.

##### Instances
``` purescript
Newtype GetFindingsRequest _
Generic GetFindingsRequest _
Show GetFindingsRequest
Decode GetFindingsRequest
Encode GetFindingsRequest
```

#### `newGetFindingsRequest`

``` purescript
newGetFindingsRequest :: String -> GetFindingsRequest
```

Constructs GetFindingsRequest from required parameters

#### `newGetFindingsRequest'`

``` purescript
newGetFindingsRequest' :: String -> ({ "DetectorId" :: String, "FindingIds" :: Maybe (FindingIds), "SortCriteria" :: Maybe (SortCriteria) } -> { "DetectorId" :: String, "FindingIds" :: Maybe (FindingIds), "SortCriteria" :: Maybe (SortCriteria) }) -> GetFindingsRequest
```

Constructs GetFindingsRequest's fields from required parameters

#### `GetFindingsResponse`

``` purescript
newtype GetFindingsResponse
  = GetFindingsResponse { "Findings" :: Maybe (Findings) }
```

##### Instances
``` purescript
Newtype GetFindingsResponse _
Generic GetFindingsResponse _
Show GetFindingsResponse
Decode GetFindingsResponse
Encode GetFindingsResponse
```

#### `newGetFindingsResponse`

``` purescript
newGetFindingsResponse :: GetFindingsResponse
```

Constructs GetFindingsResponse from required parameters

#### `newGetFindingsResponse'`

``` purescript
newGetFindingsResponse' :: ({ "Findings" :: Maybe (Findings) } -> { "Findings" :: Maybe (Findings) }) -> GetFindingsResponse
```

Constructs GetFindingsResponse's fields from required parameters

#### `GetFindingsStatisticsRequest`

``` purescript
newtype GetFindingsStatisticsRequest
  = GetFindingsStatisticsRequest { "DetectorId" :: String, "FindingCriteria" :: Maybe (FindingCriteria), "FindingStatisticTypes" :: Maybe (FindingStatisticTypes) }
```

GetFindingsStatistics request body.

##### Instances
``` purescript
Newtype GetFindingsStatisticsRequest _
Generic GetFindingsStatisticsRequest _
Show GetFindingsStatisticsRequest
Decode GetFindingsStatisticsRequest
Encode GetFindingsStatisticsRequest
```

#### `newGetFindingsStatisticsRequest`

``` purescript
newGetFindingsStatisticsRequest :: String -> GetFindingsStatisticsRequest
```

Constructs GetFindingsStatisticsRequest from required parameters

#### `newGetFindingsStatisticsRequest'`

``` purescript
newGetFindingsStatisticsRequest' :: String -> ({ "DetectorId" :: String, "FindingCriteria" :: Maybe (FindingCriteria), "FindingStatisticTypes" :: Maybe (FindingStatisticTypes) } -> { "DetectorId" :: String, "FindingCriteria" :: Maybe (FindingCriteria), "FindingStatisticTypes" :: Maybe (FindingStatisticTypes) }) -> GetFindingsStatisticsRequest
```

Constructs GetFindingsStatisticsRequest's fields from required parameters

#### `GetFindingsStatisticsResponse`

``` purescript
newtype GetFindingsStatisticsResponse
  = GetFindingsStatisticsResponse { "FindingStatistics" :: Maybe (FindingStatistics) }
```

##### Instances
``` purescript
Newtype GetFindingsStatisticsResponse _
Generic GetFindingsStatisticsResponse _
Show GetFindingsStatisticsResponse
Decode GetFindingsStatisticsResponse
Encode GetFindingsStatisticsResponse
```

#### `newGetFindingsStatisticsResponse`

``` purescript
newGetFindingsStatisticsResponse :: GetFindingsStatisticsResponse
```

Constructs GetFindingsStatisticsResponse from required parameters

#### `newGetFindingsStatisticsResponse'`

``` purescript
newGetFindingsStatisticsResponse' :: ({ "FindingStatistics" :: Maybe (FindingStatistics) } -> { "FindingStatistics" :: Maybe (FindingStatistics) }) -> GetFindingsStatisticsResponse
```

Constructs GetFindingsStatisticsResponse's fields from required parameters

#### `GetIPSetRequest`

``` purescript
newtype GetIPSetRequest
  = GetIPSetRequest { "DetectorId" :: String, "IpSetId" :: String }
```

##### Instances
``` purescript
Newtype GetIPSetRequest _
Generic GetIPSetRequest _
Show GetIPSetRequest
Decode GetIPSetRequest
Encode GetIPSetRequest
```

#### `newGetIPSetRequest`

``` purescript
newGetIPSetRequest :: String -> String -> GetIPSetRequest
```

Constructs GetIPSetRequest from required parameters

#### `newGetIPSetRequest'`

``` purescript
newGetIPSetRequest' :: String -> String -> ({ "DetectorId" :: String, "IpSetId" :: String } -> { "DetectorId" :: String, "IpSetId" :: String }) -> GetIPSetRequest
```

Constructs GetIPSetRequest's fields from required parameters

#### `GetIPSetResponse`

``` purescript
newtype GetIPSetResponse
  = GetIPSetResponse { "Format" :: Maybe (IpSetFormat), "Location" :: Maybe (Location), "Name" :: Maybe (Name), "Status" :: Maybe (IpSetStatus) }
```

##### Instances
``` purescript
Newtype GetIPSetResponse _
Generic GetIPSetResponse _
Show GetIPSetResponse
Decode GetIPSetResponse
Encode GetIPSetResponse
```

#### `newGetIPSetResponse`

``` purescript
newGetIPSetResponse :: GetIPSetResponse
```

Constructs GetIPSetResponse from required parameters

#### `newGetIPSetResponse'`

``` purescript
newGetIPSetResponse' :: ({ "Format" :: Maybe (IpSetFormat), "Location" :: Maybe (Location), "Name" :: Maybe (Name), "Status" :: Maybe (IpSetStatus) } -> { "Format" :: Maybe (IpSetFormat), "Location" :: Maybe (Location), "Name" :: Maybe (Name), "Status" :: Maybe (IpSetStatus) }) -> GetIPSetResponse
```

Constructs GetIPSetResponse's fields from required parameters

#### `GetInvitationsCountRequest`

``` purescript
newtype GetInvitationsCountRequest
  = GetInvitationsCountRequest NoArguments
```

##### Instances
``` purescript
Newtype GetInvitationsCountRequest _
Generic GetInvitationsCountRequest _
Show GetInvitationsCountRequest
Decode GetInvitationsCountRequest
Encode GetInvitationsCountRequest
```

#### `GetInvitationsCountResponse`

``` purescript
newtype GetInvitationsCountResponse
  = GetInvitationsCountResponse { "InvitationsCount" :: Maybe (Int) }
```

##### Instances
``` purescript
Newtype GetInvitationsCountResponse _
Generic GetInvitationsCountResponse _
Show GetInvitationsCountResponse
Decode GetInvitationsCountResponse
Encode GetInvitationsCountResponse
```

#### `newGetInvitationsCountResponse`

``` purescript
newGetInvitationsCountResponse :: GetInvitationsCountResponse
```

Constructs GetInvitationsCountResponse from required parameters

#### `newGetInvitationsCountResponse'`

``` purescript
newGetInvitationsCountResponse' :: ({ "InvitationsCount" :: Maybe (Int) } -> { "InvitationsCount" :: Maybe (Int) }) -> GetInvitationsCountResponse
```

Constructs GetInvitationsCountResponse's fields from required parameters

#### `GetMasterAccountRequest`

``` purescript
newtype GetMasterAccountRequest
  = GetMasterAccountRequest { "DetectorId" :: String }
```

##### Instances
``` purescript
Newtype GetMasterAccountRequest _
Generic GetMasterAccountRequest _
Show GetMasterAccountRequest
Decode GetMasterAccountRequest
Encode GetMasterAccountRequest
```

#### `newGetMasterAccountRequest`

``` purescript
newGetMasterAccountRequest :: String -> GetMasterAccountRequest
```

Constructs GetMasterAccountRequest from required parameters

#### `newGetMasterAccountRequest'`

``` purescript
newGetMasterAccountRequest' :: String -> ({ "DetectorId" :: String } -> { "DetectorId" :: String }) -> GetMasterAccountRequest
```

Constructs GetMasterAccountRequest's fields from required parameters

#### `GetMasterAccountResponse`

``` purescript
newtype GetMasterAccountResponse
  = GetMasterAccountResponse { "Master" :: Maybe (Master) }
```

##### Instances
``` purescript
Newtype GetMasterAccountResponse _
Generic GetMasterAccountResponse _
Show GetMasterAccountResponse
Decode GetMasterAccountResponse
Encode GetMasterAccountResponse
```

#### `newGetMasterAccountResponse`

``` purescript
newGetMasterAccountResponse :: GetMasterAccountResponse
```

Constructs GetMasterAccountResponse from required parameters

#### `newGetMasterAccountResponse'`

``` purescript
newGetMasterAccountResponse' :: ({ "Master" :: Maybe (Master) } -> { "Master" :: Maybe (Master) }) -> GetMasterAccountResponse
```

Constructs GetMasterAccountResponse's fields from required parameters

#### `GetMembersRequest`

``` purescript
newtype GetMembersRequest
  = GetMembersRequest { "AccountIds" :: Maybe (AccountIds), "DetectorId" :: String }
```

GetMembers request body.

##### Instances
``` purescript
Newtype GetMembersRequest _
Generic GetMembersRequest _
Show GetMembersRequest
Decode GetMembersRequest
Encode GetMembersRequest
```

#### `newGetMembersRequest`

``` purescript
newGetMembersRequest :: String -> GetMembersRequest
```

Constructs GetMembersRequest from required parameters

#### `newGetMembersRequest'`

``` purescript
newGetMembersRequest' :: String -> ({ "AccountIds" :: Maybe (AccountIds), "DetectorId" :: String } -> { "AccountIds" :: Maybe (AccountIds), "DetectorId" :: String }) -> GetMembersRequest
```

Constructs GetMembersRequest's fields from required parameters

#### `GetMembersResponse`

``` purescript
newtype GetMembersResponse
  = GetMembersResponse { "Members" :: Maybe (Members), "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) }
```

##### Instances
``` purescript
Newtype GetMembersResponse _
Generic GetMembersResponse _
Show GetMembersResponse
Decode GetMembersResponse
Encode GetMembersResponse
```

#### `newGetMembersResponse`

``` purescript
newGetMembersResponse :: GetMembersResponse
```

Constructs GetMembersResponse from required parameters

#### `newGetMembersResponse'`

``` purescript
newGetMembersResponse' :: ({ "Members" :: Maybe (Members), "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) } -> { "Members" :: Maybe (Members), "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) }) -> GetMembersResponse
```

Constructs GetMembersResponse's fields from required parameters

#### `GetThreatIntelSetRequest`

``` purescript
newtype GetThreatIntelSetRequest
  = GetThreatIntelSetRequest { "DetectorId" :: String, "ThreatIntelSetId" :: String }
```

##### Instances
``` purescript
Newtype GetThreatIntelSetRequest _
Generic GetThreatIntelSetRequest _
Show GetThreatIntelSetRequest
Decode GetThreatIntelSetRequest
Encode GetThreatIntelSetRequest
```

#### `newGetThreatIntelSetRequest`

``` purescript
newGetThreatIntelSetRequest :: String -> String -> GetThreatIntelSetRequest
```

Constructs GetThreatIntelSetRequest from required parameters

#### `newGetThreatIntelSetRequest'`

``` purescript
newGetThreatIntelSetRequest' :: String -> String -> ({ "DetectorId" :: String, "ThreatIntelSetId" :: String } -> { "DetectorId" :: String, "ThreatIntelSetId" :: String }) -> GetThreatIntelSetRequest
```

Constructs GetThreatIntelSetRequest's fields from required parameters

#### `GetThreatIntelSetResponse`

``` purescript
newtype GetThreatIntelSetResponse
  = GetThreatIntelSetResponse { "Format" :: Maybe (ThreatIntelSetFormat), "Location" :: Maybe (Location), "Name" :: Maybe (Name), "Status" :: Maybe (ThreatIntelSetStatus) }
```

##### Instances
``` purescript
Newtype GetThreatIntelSetResponse _
Generic GetThreatIntelSetResponse _
Show GetThreatIntelSetResponse
Decode GetThreatIntelSetResponse
Encode GetThreatIntelSetResponse
```

#### `newGetThreatIntelSetResponse`

``` purescript
newGetThreatIntelSetResponse :: GetThreatIntelSetResponse
```

Constructs GetThreatIntelSetResponse from required parameters

#### `newGetThreatIntelSetResponse'`

``` purescript
newGetThreatIntelSetResponse' :: ({ "Format" :: Maybe (ThreatIntelSetFormat), "Location" :: Maybe (Location), "Name" :: Maybe (Name), "Status" :: Maybe (ThreatIntelSetStatus) } -> { "Format" :: Maybe (ThreatIntelSetFormat), "Location" :: Maybe (Location), "Name" :: Maybe (Name), "Status" :: Maybe (ThreatIntelSetStatus) }) -> GetThreatIntelSetResponse
```

Constructs GetThreatIntelSetResponse's fields from required parameters

#### `IamInstanceProfile`

``` purescript
newtype IamInstanceProfile
  = IamInstanceProfile { "Arn" :: Maybe (String), "Id" :: Maybe (String) }
```

The profile information of the EC2 instance.

##### Instances
``` purescript
Newtype IamInstanceProfile _
Generic IamInstanceProfile _
Show IamInstanceProfile
Decode IamInstanceProfile
Encode IamInstanceProfile
```

#### `newIamInstanceProfile`

``` purescript
newIamInstanceProfile :: IamInstanceProfile
```

Constructs IamInstanceProfile from required parameters

#### `newIamInstanceProfile'`

``` purescript
newIamInstanceProfile' :: ({ "Arn" :: Maybe (String), "Id" :: Maybe (String) } -> { "Arn" :: Maybe (String), "Id" :: Maybe (String) }) -> IamInstanceProfile
```

Constructs IamInstanceProfile's fields from required parameters

#### `InstanceDetails`

``` purescript
newtype InstanceDetails
  = InstanceDetails { "AvailabilityZone" :: Maybe (String), "IamInstanceProfile" :: Maybe (IamInstanceProfile), "ImageId" :: Maybe (String), "InstanceId" :: Maybe (String), "InstanceState" :: Maybe (String), "InstanceType" :: Maybe (String), "LaunchTime" :: Maybe (String), "NetworkInterfaces" :: Maybe (NetworkInterfaces), "Platform" :: Maybe (String), "ProductCodes" :: Maybe (ProductCodes), "Tags" :: Maybe (Tags) }
```

The information about the EC2 instance associated with the activity that prompted GuardDuty to generate a finding.

##### Instances
``` purescript
Newtype InstanceDetails _
Generic InstanceDetails _
Show InstanceDetails
Decode InstanceDetails
Encode InstanceDetails
```

#### `newInstanceDetails`

``` purescript
newInstanceDetails :: InstanceDetails
```

Constructs InstanceDetails from required parameters

#### `newInstanceDetails'`

``` purescript
newInstanceDetails' :: ({ "AvailabilityZone" :: Maybe (String), "IamInstanceProfile" :: Maybe (IamInstanceProfile), "ImageId" :: Maybe (String), "InstanceId" :: Maybe (String), "InstanceState" :: Maybe (String), "InstanceType" :: Maybe (String), "LaunchTime" :: Maybe (String), "NetworkInterfaces" :: Maybe (NetworkInterfaces), "Platform" :: Maybe (String), "ProductCodes" :: Maybe (ProductCodes), "Tags" :: Maybe (Tags) } -> { "AvailabilityZone" :: Maybe (String), "IamInstanceProfile" :: Maybe (IamInstanceProfile), "ImageId" :: Maybe (String), "InstanceId" :: Maybe (String), "InstanceState" :: Maybe (String), "InstanceType" :: Maybe (String), "LaunchTime" :: Maybe (String), "NetworkInterfaces" :: Maybe (NetworkInterfaces), "Platform" :: Maybe (String), "ProductCodes" :: Maybe (ProductCodes), "Tags" :: Maybe (Tags) }) -> InstanceDetails
```

Constructs InstanceDetails's fields from required parameters

#### `InternalServerErrorException`

``` purescript
newtype InternalServerErrorException
  = InternalServerErrorException { "Message" :: Maybe (String), "Type" :: Maybe (String) }
```

Error response object.

##### Instances
``` purescript
Newtype InternalServerErrorException _
Generic InternalServerErrorException _
Show InternalServerErrorException
Decode InternalServerErrorException
Encode InternalServerErrorException
```

#### `newInternalServerErrorException`

``` purescript
newInternalServerErrorException :: InternalServerErrorException
```

Constructs InternalServerErrorException from required parameters

#### `newInternalServerErrorException'`

``` purescript
newInternalServerErrorException' :: ({ "Message" :: Maybe (String), "Type" :: Maybe (String) } -> { "Message" :: Maybe (String), "Type" :: Maybe (String) }) -> InternalServerErrorException
```

Constructs InternalServerErrorException's fields from required parameters

#### `Invitation`

``` purescript
newtype Invitation
  = Invitation { "AccountId" :: Maybe (String), "InvitationId" :: Maybe (InvitationId), "InvitedAt" :: Maybe (InvitedAt), "RelationshipStatus" :: Maybe (String) }
```

Invitation from an AWS account to become the current account's master.

##### Instances
``` purescript
Newtype Invitation _
Generic Invitation _
Show Invitation
Decode Invitation
Encode Invitation
```

#### `newInvitation`

``` purescript
newInvitation :: Invitation
```

Constructs Invitation from required parameters

#### `newInvitation'`

``` purescript
newInvitation' :: ({ "AccountId" :: Maybe (String), "InvitationId" :: Maybe (InvitationId), "InvitedAt" :: Maybe (InvitedAt), "RelationshipStatus" :: Maybe (String) } -> { "AccountId" :: Maybe (String), "InvitationId" :: Maybe (InvitationId), "InvitedAt" :: Maybe (InvitedAt), "RelationshipStatus" :: Maybe (String) }) -> Invitation
```

Constructs Invitation's fields from required parameters

#### `InvitationId`

``` purescript
newtype InvitationId
  = InvitationId String
```

This value is used to validate the master account to the member account.

##### Instances
``` purescript
Newtype InvitationId _
Generic InvitationId _
Show InvitationId
Decode InvitationId
Encode InvitationId
```

#### `Invitations`

``` purescript
newtype Invitations
  = Invitations (Array Invitation)
```

A list of invitation descriptions.

##### Instances
``` purescript
Newtype Invitations _
Generic Invitations _
Show Invitations
Decode Invitations
Encode Invitations
```

#### `InviteMembersRequest`

``` purescript
newtype InviteMembersRequest
  = InviteMembersRequest { "AccountIds" :: Maybe (AccountIds), "DetectorId" :: String, "Message" :: Maybe (Message) }
```

InviteMembers request body.

##### Instances
``` purescript
Newtype InviteMembersRequest _
Generic InviteMembersRequest _
Show InviteMembersRequest
Decode InviteMembersRequest
Encode InviteMembersRequest
```

#### `newInviteMembersRequest`

``` purescript
newInviteMembersRequest :: String -> InviteMembersRequest
```

Constructs InviteMembersRequest from required parameters

#### `newInviteMembersRequest'`

``` purescript
newInviteMembersRequest' :: String -> ({ "AccountIds" :: Maybe (AccountIds), "DetectorId" :: String, "Message" :: Maybe (Message) } -> { "AccountIds" :: Maybe (AccountIds), "DetectorId" :: String, "Message" :: Maybe (Message) }) -> InviteMembersRequest
```

Constructs InviteMembersRequest's fields from required parameters

#### `InviteMembersResponse`

``` purescript
newtype InviteMembersResponse
  = InviteMembersResponse { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) }
```

##### Instances
``` purescript
Newtype InviteMembersResponse _
Generic InviteMembersResponse _
Show InviteMembersResponse
Decode InviteMembersResponse
Encode InviteMembersResponse
```

#### `newInviteMembersResponse`

``` purescript
newInviteMembersResponse :: InviteMembersResponse
```

Constructs InviteMembersResponse from required parameters

#### `newInviteMembersResponse'`

``` purescript
newInviteMembersResponse' :: ({ "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) } -> { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) }) -> InviteMembersResponse
```

Constructs InviteMembersResponse's fields from required parameters

#### `InvitedAt`

``` purescript
newtype InvitedAt
  = InvitedAt String
```

Timestamp at which a member has been invited. The format will be ISO-8601.

##### Instances
``` purescript
Newtype InvitedAt _
Generic InvitedAt _
Show InvitedAt
Decode InvitedAt
Encode InvitedAt
```

#### `IpSetFormat`

``` purescript
newtype IpSetFormat
  = IpSetFormat String
```

The format of the ipSet.

##### Instances
``` purescript
Newtype IpSetFormat _
Generic IpSetFormat _
Show IpSetFormat
Decode IpSetFormat
Encode IpSetFormat
```

#### `IpSetId`

``` purescript
newtype IpSetId
  = IpSetId String
```

The unique identifier for an IP Set

##### Instances
``` purescript
Newtype IpSetId _
Generic IpSetId _
Show IpSetId
Decode IpSetId
Encode IpSetId
```

#### `IpSetIds`

``` purescript
newtype IpSetIds
  = IpSetIds (Array IpSetId)
```

A list of the IP set IDs

##### Instances
``` purescript
Newtype IpSetIds _
Generic IpSetIds _
Show IpSetIds
Decode IpSetIds
Encode IpSetIds
```

#### `IpSetStatus`

``` purescript
newtype IpSetStatus
  = IpSetStatus String
```

The status of ipSet file uploaded.

##### Instances
``` purescript
Newtype IpSetStatus _
Generic IpSetStatus _
Show IpSetStatus
Decode IpSetStatus
Encode IpSetStatus
```

#### `Ipv6Address`

``` purescript
newtype Ipv6Address
  = Ipv6Address String
```

IpV6 address of the EC2 instance.

##### Instances
``` purescript
Newtype Ipv6Address _
Generic Ipv6Address _
Show Ipv6Address
Decode Ipv6Address
Encode Ipv6Address
```

#### `Ipv6Addresses`

``` purescript
newtype Ipv6Addresses
  = Ipv6Addresses (Array Ipv6Address)
```

A list of EC2 instance IPv6 address information.

##### Instances
``` purescript
Newtype Ipv6Addresses _
Generic Ipv6Addresses _
Show Ipv6Addresses
Decode Ipv6Addresses
Encode Ipv6Addresses
```

#### `ListDetectorsRequest`

``` purescript
newtype ListDetectorsRequest
  = ListDetectorsRequest { "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype ListDetectorsRequest _
Generic ListDetectorsRequest _
Show ListDetectorsRequest
Decode ListDetectorsRequest
Encode ListDetectorsRequest
```

#### `newListDetectorsRequest`

``` purescript
newListDetectorsRequest :: ListDetectorsRequest
```

Constructs ListDetectorsRequest from required parameters

#### `newListDetectorsRequest'`

``` purescript
newListDetectorsRequest' :: ({ "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (String) } -> { "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (String) }) -> ListDetectorsRequest
```

Constructs ListDetectorsRequest's fields from required parameters

#### `ListDetectorsResponse`

``` purescript
newtype ListDetectorsResponse
  = ListDetectorsResponse { "DetectorIds" :: Maybe (DetectorIds), "NextToken" :: Maybe (NextToken) }
```

##### Instances
``` purescript
Newtype ListDetectorsResponse _
Generic ListDetectorsResponse _
Show ListDetectorsResponse
Decode ListDetectorsResponse
Encode ListDetectorsResponse
```

#### `newListDetectorsResponse`

``` purescript
newListDetectorsResponse :: ListDetectorsResponse
```

Constructs ListDetectorsResponse from required parameters

#### `newListDetectorsResponse'`

``` purescript
newListDetectorsResponse' :: ({ "DetectorIds" :: Maybe (DetectorIds), "NextToken" :: Maybe (NextToken) } -> { "DetectorIds" :: Maybe (DetectorIds), "NextToken" :: Maybe (NextToken) }) -> ListDetectorsResponse
```

Constructs ListDetectorsResponse's fields from required parameters

#### `ListFindingsRequest`

``` purescript
newtype ListFindingsRequest
  = ListFindingsRequest { "DetectorId" :: String, "FindingCriteria" :: Maybe (FindingCriteria), "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (NextToken), "SortCriteria" :: Maybe (SortCriteria) }
```

ListFindings request body.

##### Instances
``` purescript
Newtype ListFindingsRequest _
Generic ListFindingsRequest _
Show ListFindingsRequest
Decode ListFindingsRequest
Encode ListFindingsRequest
```

#### `newListFindingsRequest`

``` purescript
newListFindingsRequest :: String -> ListFindingsRequest
```

Constructs ListFindingsRequest from required parameters

#### `newListFindingsRequest'`

``` purescript
newListFindingsRequest' :: String -> ({ "DetectorId" :: String, "FindingCriteria" :: Maybe (FindingCriteria), "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (NextToken), "SortCriteria" :: Maybe (SortCriteria) } -> { "DetectorId" :: String, "FindingCriteria" :: Maybe (FindingCriteria), "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (NextToken), "SortCriteria" :: Maybe (SortCriteria) }) -> ListFindingsRequest
```

Constructs ListFindingsRequest's fields from required parameters

#### `ListFindingsResponse`

``` purescript
newtype ListFindingsResponse
  = ListFindingsResponse { "FindingIds" :: Maybe (FindingIds), "NextToken" :: Maybe (NextToken) }
```

##### Instances
``` purescript
Newtype ListFindingsResponse _
Generic ListFindingsResponse _
Show ListFindingsResponse
Decode ListFindingsResponse
Encode ListFindingsResponse
```

#### `newListFindingsResponse`

``` purescript
newListFindingsResponse :: ListFindingsResponse
```

Constructs ListFindingsResponse from required parameters

#### `newListFindingsResponse'`

``` purescript
newListFindingsResponse' :: ({ "FindingIds" :: Maybe (FindingIds), "NextToken" :: Maybe (NextToken) } -> { "FindingIds" :: Maybe (FindingIds), "NextToken" :: Maybe (NextToken) }) -> ListFindingsResponse
```

Constructs ListFindingsResponse's fields from required parameters

#### `ListIPSetsRequest`

``` purescript
newtype ListIPSetsRequest
  = ListIPSetsRequest { "DetectorId" :: String, "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype ListIPSetsRequest _
Generic ListIPSetsRequest _
Show ListIPSetsRequest
Decode ListIPSetsRequest
Encode ListIPSetsRequest
```

#### `newListIPSetsRequest`

``` purescript
newListIPSetsRequest :: String -> ListIPSetsRequest
```

Constructs ListIPSetsRequest from required parameters

#### `newListIPSetsRequest'`

``` purescript
newListIPSetsRequest' :: String -> ({ "DetectorId" :: String, "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (String) } -> { "DetectorId" :: String, "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (String) }) -> ListIPSetsRequest
```

Constructs ListIPSetsRequest's fields from required parameters

#### `ListIPSetsResponse`

``` purescript
newtype ListIPSetsResponse
  = ListIPSetsResponse { "IpSetIds" :: Maybe (IpSetIds), "NextToken" :: Maybe (NextToken) }
```

##### Instances
``` purescript
Newtype ListIPSetsResponse _
Generic ListIPSetsResponse _
Show ListIPSetsResponse
Decode ListIPSetsResponse
Encode ListIPSetsResponse
```

#### `newListIPSetsResponse`

``` purescript
newListIPSetsResponse :: ListIPSetsResponse
```

Constructs ListIPSetsResponse from required parameters

#### `newListIPSetsResponse'`

``` purescript
newListIPSetsResponse' :: ({ "IpSetIds" :: Maybe (IpSetIds), "NextToken" :: Maybe (NextToken) } -> { "IpSetIds" :: Maybe (IpSetIds), "NextToken" :: Maybe (NextToken) }) -> ListIPSetsResponse
```

Constructs ListIPSetsResponse's fields from required parameters

#### `ListInvitationsRequest`

``` purescript
newtype ListInvitationsRequest
  = ListInvitationsRequest { "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype ListInvitationsRequest _
Generic ListInvitationsRequest _
Show ListInvitationsRequest
Decode ListInvitationsRequest
Encode ListInvitationsRequest
```

#### `newListInvitationsRequest`

``` purescript
newListInvitationsRequest :: ListInvitationsRequest
```

Constructs ListInvitationsRequest from required parameters

#### `newListInvitationsRequest'`

``` purescript
newListInvitationsRequest' :: ({ "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (String) } -> { "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (String) }) -> ListInvitationsRequest
```

Constructs ListInvitationsRequest's fields from required parameters

#### `ListInvitationsResponse`

``` purescript
newtype ListInvitationsResponse
  = ListInvitationsResponse { "Invitations" :: Maybe (Invitations), "NextToken" :: Maybe (NextToken) }
```

##### Instances
``` purescript
Newtype ListInvitationsResponse _
Generic ListInvitationsResponse _
Show ListInvitationsResponse
Decode ListInvitationsResponse
Encode ListInvitationsResponse
```

#### `newListInvitationsResponse`

``` purescript
newListInvitationsResponse :: ListInvitationsResponse
```

Constructs ListInvitationsResponse from required parameters

#### `newListInvitationsResponse'`

``` purescript
newListInvitationsResponse' :: ({ "Invitations" :: Maybe (Invitations), "NextToken" :: Maybe (NextToken) } -> { "Invitations" :: Maybe (Invitations), "NextToken" :: Maybe (NextToken) }) -> ListInvitationsResponse
```

Constructs ListInvitationsResponse's fields from required parameters

#### `ListMembersRequest`

``` purescript
newtype ListMembersRequest
  = ListMembersRequest { "DetectorId" :: String, "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (String), "OnlyAssociated" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype ListMembersRequest _
Generic ListMembersRequest _
Show ListMembersRequest
Decode ListMembersRequest
Encode ListMembersRequest
```

#### `newListMembersRequest`

``` purescript
newListMembersRequest :: String -> ListMembersRequest
```

Constructs ListMembersRequest from required parameters

#### `newListMembersRequest'`

``` purescript
newListMembersRequest' :: String -> ({ "DetectorId" :: String, "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (String), "OnlyAssociated" :: Maybe (String) } -> { "DetectorId" :: String, "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (String), "OnlyAssociated" :: Maybe (String) }) -> ListMembersRequest
```

Constructs ListMembersRequest's fields from required parameters

#### `ListMembersResponse`

``` purescript
newtype ListMembersResponse
  = ListMembersResponse { "Members" :: Maybe (Members), "NextToken" :: Maybe (NextToken) }
```

##### Instances
``` purescript
Newtype ListMembersResponse _
Generic ListMembersResponse _
Show ListMembersResponse
Decode ListMembersResponse
Encode ListMembersResponse
```

#### `newListMembersResponse`

``` purescript
newListMembersResponse :: ListMembersResponse
```

Constructs ListMembersResponse from required parameters

#### `newListMembersResponse'`

``` purescript
newListMembersResponse' :: ({ "Members" :: Maybe (Members), "NextToken" :: Maybe (NextToken) } -> { "Members" :: Maybe (Members), "NextToken" :: Maybe (NextToken) }) -> ListMembersResponse
```

Constructs ListMembersResponse's fields from required parameters

#### `ListOfPortProbeDetail`

``` purescript
newtype ListOfPortProbeDetail
  = ListOfPortProbeDetail (Array PortProbeDetail)
```

##### Instances
``` purescript
Newtype ListOfPortProbeDetail _
Generic ListOfPortProbeDetail _
Show ListOfPortProbeDetail
Decode ListOfPortProbeDetail
Encode ListOfPortProbeDetail
```

#### `ListThreatIntelSetsRequest`

``` purescript
newtype ListThreatIntelSetsRequest
  = ListThreatIntelSetsRequest { "DetectorId" :: String, "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype ListThreatIntelSetsRequest _
Generic ListThreatIntelSetsRequest _
Show ListThreatIntelSetsRequest
Decode ListThreatIntelSetsRequest
Encode ListThreatIntelSetsRequest
```

#### `newListThreatIntelSetsRequest`

``` purescript
newListThreatIntelSetsRequest :: String -> ListThreatIntelSetsRequest
```

Constructs ListThreatIntelSetsRequest from required parameters

#### `newListThreatIntelSetsRequest'`

``` purescript
newListThreatIntelSetsRequest' :: String -> ({ "DetectorId" :: String, "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (String) } -> { "DetectorId" :: String, "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (String) }) -> ListThreatIntelSetsRequest
```

Constructs ListThreatIntelSetsRequest's fields from required parameters

#### `ListThreatIntelSetsResponse`

``` purescript
newtype ListThreatIntelSetsResponse
  = ListThreatIntelSetsResponse { "NextToken" :: Maybe (NextToken), "ThreatIntelSetIds" :: Maybe (ThreatIntelSetIds) }
```

##### Instances
``` purescript
Newtype ListThreatIntelSetsResponse _
Generic ListThreatIntelSetsResponse _
Show ListThreatIntelSetsResponse
Decode ListThreatIntelSetsResponse
Encode ListThreatIntelSetsResponse
```

#### `newListThreatIntelSetsResponse`

``` purescript
newListThreatIntelSetsResponse :: ListThreatIntelSetsResponse
```

Constructs ListThreatIntelSetsResponse from required parameters

#### `newListThreatIntelSetsResponse'`

``` purescript
newListThreatIntelSetsResponse' :: ({ "NextToken" :: Maybe (NextToken), "ThreatIntelSetIds" :: Maybe (ThreatIntelSetIds) } -> { "NextToken" :: Maybe (NextToken), "ThreatIntelSetIds" :: Maybe (ThreatIntelSetIds) }) -> ListThreatIntelSetsResponse
```

Constructs ListThreatIntelSetsResponse's fields from required parameters

#### `LocalPortDetails`

``` purescript
newtype LocalPortDetails
  = LocalPortDetails { "Port" :: Maybe (Int), "PortName" :: Maybe (String) }
```

Local port information of the connection.

##### Instances
``` purescript
Newtype LocalPortDetails _
Generic LocalPortDetails _
Show LocalPortDetails
Decode LocalPortDetails
Encode LocalPortDetails
```

#### `newLocalPortDetails`

``` purescript
newLocalPortDetails :: LocalPortDetails
```

Constructs LocalPortDetails from required parameters

#### `newLocalPortDetails'`

``` purescript
newLocalPortDetails' :: ({ "Port" :: Maybe (Int), "PortName" :: Maybe (String) } -> { "Port" :: Maybe (Int), "PortName" :: Maybe (String) }) -> LocalPortDetails
```

Constructs LocalPortDetails's fields from required parameters

#### `Location`

``` purescript
newtype Location
  = Location String
```

The location of the S3 bucket where the list resides. For example (https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key)

##### Instances
``` purescript
Newtype Location _
Generic Location _
Show Location
Decode Location
Encode Location
```

#### `MapOfCondition`

``` purescript
newtype MapOfCondition
  = MapOfCondition (StrMap Condition)
```

##### Instances
``` purescript
Newtype MapOfCondition _
Generic MapOfCondition _
Show MapOfCondition
Decode MapOfCondition
Encode MapOfCondition
```

#### `MapOfCountBySeverityFindingStatistic`

``` purescript
newtype MapOfCountBySeverityFindingStatistic
  = MapOfCountBySeverityFindingStatistic (StrMap CountBySeverityFindingStatistic)
```

##### Instances
``` purescript
Newtype MapOfCountBySeverityFindingStatistic _
Generic MapOfCountBySeverityFindingStatistic _
Show MapOfCountBySeverityFindingStatistic
Decode MapOfCountBySeverityFindingStatistic
Encode MapOfCountBySeverityFindingStatistic
```

#### `Master`

``` purescript
newtype Master
  = Master { "AccountId" :: Maybe (String), "InvitationId" :: Maybe (InvitationId), "InvitedAt" :: Maybe (InvitedAt), "RelationshipStatus" :: Maybe (String) }
```

Contains details about the master account.

##### Instances
``` purescript
Newtype Master _
Generic Master _
Show Master
Decode Master
Encode Master
```

#### `newMaster`

``` purescript
newMaster :: Master
```

Constructs Master from required parameters

#### `newMaster'`

``` purescript
newMaster' :: ({ "AccountId" :: Maybe (String), "InvitationId" :: Maybe (InvitationId), "InvitedAt" :: Maybe (InvitedAt), "RelationshipStatus" :: Maybe (String) } -> { "AccountId" :: Maybe (String), "InvitationId" :: Maybe (InvitationId), "InvitedAt" :: Maybe (InvitedAt), "RelationshipStatus" :: Maybe (String) }) -> Master
```

Constructs Master's fields from required parameters

#### `MasterId`

``` purescript
newtype MasterId
  = MasterId String
```

The master account ID.

##### Instances
``` purescript
Newtype MasterId _
Generic MasterId _
Show MasterId
Decode MasterId
Encode MasterId
```

#### `MaxResults`

``` purescript
newtype MaxResults
  = MaxResults Int
```

##### Instances
``` purescript
Newtype MaxResults _
Generic MaxResults _
Show MaxResults
Decode MaxResults
Encode MaxResults
```

#### `Member`

``` purescript
newtype Member
  = Member { "AccountId" :: Maybe (AccountId), "DetectorId" :: Maybe (DetectorId), "Email" :: Maybe (Email), "InvitedAt" :: Maybe (InvitedAt), "MasterId" :: Maybe (MasterId), "RelationshipStatus" :: Maybe (String), "UpdatedAt" :: Maybe (UpdatedAt) }
```

Contains details about the member account.

##### Instances
``` purescript
Newtype Member _
Generic Member _
Show Member
Decode Member
Encode Member
```

#### `newMember`

``` purescript
newMember :: Member
```

Constructs Member from required parameters

#### `newMember'`

``` purescript
newMember' :: ({ "AccountId" :: Maybe (AccountId), "DetectorId" :: Maybe (DetectorId), "Email" :: Maybe (Email), "InvitedAt" :: Maybe (InvitedAt), "MasterId" :: Maybe (MasterId), "RelationshipStatus" :: Maybe (String), "UpdatedAt" :: Maybe (UpdatedAt) } -> { "AccountId" :: Maybe (AccountId), "DetectorId" :: Maybe (DetectorId), "Email" :: Maybe (Email), "InvitedAt" :: Maybe (InvitedAt), "MasterId" :: Maybe (MasterId), "RelationshipStatus" :: Maybe (String), "UpdatedAt" :: Maybe (UpdatedAt) }) -> Member
```

Constructs Member's fields from required parameters

#### `Members`

``` purescript
newtype Members
  = Members (Array Member)
```

A list of member descriptions.

##### Instances
``` purescript
Newtype Members _
Generic Members _
Show Members
Decode Members
Encode Members
```

#### `Message`

``` purescript
newtype Message
  = Message String
```

The invitation message that you want to send to the accounts that you're inviting to GuardDuty as members.

##### Instances
``` purescript
Newtype Message _
Generic Message _
Show Message
Decode Message
Encode Message
```

#### `Name`

``` purescript
newtype Name
  = Name String
```

The user-friendly name to identify the list.

##### Instances
``` purescript
Newtype Name _
Generic Name _
Show Name
Decode Name
Encode Name
```

#### `Neq`

``` purescript
newtype Neq
  = Neq (Array String)
```

Represents the not equal condition to be applied to a single field when querying for findings.

##### Instances
``` purescript
Newtype Neq _
Generic Neq _
Show Neq
Decode Neq
Encode Neq
```

#### `NetworkConnectionAction`

``` purescript
newtype NetworkConnectionAction
  = NetworkConnectionAction { "Blocked" :: Maybe (Boolean), "ConnectionDirection" :: Maybe (String), "LocalPortDetails" :: Maybe (LocalPortDetails), "Protocol" :: Maybe (String), "RemoteIpDetails" :: Maybe (RemoteIpDetails), "RemotePortDetails" :: Maybe (RemotePortDetails) }
```

Information about the NETWORK_CONNECTION action described in this finding.

##### Instances
``` purescript
Newtype NetworkConnectionAction _
Generic NetworkConnectionAction _
Show NetworkConnectionAction
Decode NetworkConnectionAction
Encode NetworkConnectionAction
```

#### `newNetworkConnectionAction`

``` purescript
newNetworkConnectionAction :: NetworkConnectionAction
```

Constructs NetworkConnectionAction from required parameters

#### `newNetworkConnectionAction'`

``` purescript
newNetworkConnectionAction' :: ({ "Blocked" :: Maybe (Boolean), "ConnectionDirection" :: Maybe (String), "LocalPortDetails" :: Maybe (LocalPortDetails), "Protocol" :: Maybe (String), "RemoteIpDetails" :: Maybe (RemoteIpDetails), "RemotePortDetails" :: Maybe (RemotePortDetails) } -> { "Blocked" :: Maybe (Boolean), "ConnectionDirection" :: Maybe (String), "LocalPortDetails" :: Maybe (LocalPortDetails), "Protocol" :: Maybe (String), "RemoteIpDetails" :: Maybe (RemoteIpDetails), "RemotePortDetails" :: Maybe (RemotePortDetails) }) -> NetworkConnectionAction
```

Constructs NetworkConnectionAction's fields from required parameters

#### `NetworkInterface`

``` purescript
newtype NetworkInterface
  = NetworkInterface { "Ipv6Addresses" :: Maybe (Ipv6Addresses), "PrivateDnsName" :: Maybe (PrivateDnsName), "PrivateIpAddress" :: Maybe (PrivateIpAddress), "PrivateIpAddresses" :: Maybe (PrivateIpAddresses), "PublicDnsName" :: Maybe (String), "PublicIp" :: Maybe (String), "SecurityGroups" :: Maybe (SecurityGroups), "SubnetId" :: Maybe (String), "VpcId" :: Maybe (String) }
```

The network interface information of the EC2 instance.

##### Instances
``` purescript
Newtype NetworkInterface _
Generic NetworkInterface _
Show NetworkInterface
Decode NetworkInterface
Encode NetworkInterface
```

#### `newNetworkInterface`

``` purescript
newNetworkInterface :: NetworkInterface
```

Constructs NetworkInterface from required parameters

#### `newNetworkInterface'`

``` purescript
newNetworkInterface' :: ({ "Ipv6Addresses" :: Maybe (Ipv6Addresses), "PrivateDnsName" :: Maybe (PrivateDnsName), "PrivateIpAddress" :: Maybe (PrivateIpAddress), "PrivateIpAddresses" :: Maybe (PrivateIpAddresses), "PublicDnsName" :: Maybe (String), "PublicIp" :: Maybe (String), "SecurityGroups" :: Maybe (SecurityGroups), "SubnetId" :: Maybe (String), "VpcId" :: Maybe (String) } -> { "Ipv6Addresses" :: Maybe (Ipv6Addresses), "PrivateDnsName" :: Maybe (PrivateDnsName), "PrivateIpAddress" :: Maybe (PrivateIpAddress), "PrivateIpAddresses" :: Maybe (PrivateIpAddresses), "PublicDnsName" :: Maybe (String), "PublicIp" :: Maybe (String), "SecurityGroups" :: Maybe (SecurityGroups), "SubnetId" :: Maybe (String), "VpcId" :: Maybe (String) }) -> NetworkInterface
```

Constructs NetworkInterface's fields from required parameters

#### `NetworkInterfaces`

``` purescript
newtype NetworkInterfaces
  = NetworkInterfaces (Array NetworkInterface)
```

The network interface information of the EC2 instance.

##### Instances
``` purescript
Newtype NetworkInterfaces _
Generic NetworkInterfaces _
Show NetworkInterfaces
Decode NetworkInterfaces
Encode NetworkInterfaces
```

#### `NextToken`

``` purescript
newtype NextToken
  = NextToken String
```

You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action fill nextToken in the request with the value of NextToken from the previous response to continue listing data.

##### Instances
``` purescript
Newtype NextToken _
Generic NextToken _
Show NextToken
Decode NextToken
Encode NextToken
```

#### `OrderBy`

``` purescript
newtype OrderBy
  = OrderBy String
```

##### Instances
``` purescript
Newtype OrderBy _
Generic OrderBy _
Show OrderBy
Decode OrderBy
Encode OrderBy
```

#### `Organization`

``` purescript
newtype Organization
  = Organization { "Asn" :: Maybe (String), "AsnOrg" :: Maybe (String), "Isp" :: Maybe (String), "Org" :: Maybe (String) }
```

ISP Organization information of the remote IP address.

##### Instances
``` purescript
Newtype Organization _
Generic Organization _
Show Organization
Decode Organization
Encode Organization
```

#### `newOrganization`

``` purescript
newOrganization :: Organization
```

Constructs Organization from required parameters

#### `newOrganization'`

``` purescript
newOrganization' :: ({ "Asn" :: Maybe (String), "AsnOrg" :: Maybe (String), "Isp" :: Maybe (String), "Org" :: Maybe (String) } -> { "Asn" :: Maybe (String), "AsnOrg" :: Maybe (String), "Isp" :: Maybe (String), "Org" :: Maybe (String) }) -> Organization
```

Constructs Organization's fields from required parameters

#### `PortProbeAction`

``` purescript
newtype PortProbeAction
  = PortProbeAction { "Blocked" :: Maybe (Boolean), "PortProbeDetails" :: Maybe (ListOfPortProbeDetail) }
```

Information about the PORT_PROBE action described in this finding.

##### Instances
``` purescript
Newtype PortProbeAction _
Generic PortProbeAction _
Show PortProbeAction
Decode PortProbeAction
Encode PortProbeAction
```

#### `newPortProbeAction`

``` purescript
newPortProbeAction :: PortProbeAction
```

Constructs PortProbeAction from required parameters

#### `newPortProbeAction'`

``` purescript
newPortProbeAction' :: ({ "Blocked" :: Maybe (Boolean), "PortProbeDetails" :: Maybe (ListOfPortProbeDetail) } -> { "Blocked" :: Maybe (Boolean), "PortProbeDetails" :: Maybe (ListOfPortProbeDetail) }) -> PortProbeAction
```

Constructs PortProbeAction's fields from required parameters

#### `PortProbeDetail`

``` purescript
newtype PortProbeDetail
  = PortProbeDetail { "LocalPortDetails" :: Maybe (LocalPortDetails), "RemoteIpDetails" :: Maybe (RemoteIpDetails) }
```

Details about the port probe finding.

##### Instances
``` purescript
Newtype PortProbeDetail _
Generic PortProbeDetail _
Show PortProbeDetail
Decode PortProbeDetail
Encode PortProbeDetail
```

#### `newPortProbeDetail`

``` purescript
newPortProbeDetail :: PortProbeDetail
```

Constructs PortProbeDetail from required parameters

#### `newPortProbeDetail'`

``` purescript
newPortProbeDetail' :: ({ "LocalPortDetails" :: Maybe (LocalPortDetails), "RemoteIpDetails" :: Maybe (RemoteIpDetails) } -> { "LocalPortDetails" :: Maybe (LocalPortDetails), "RemoteIpDetails" :: Maybe (RemoteIpDetails) }) -> PortProbeDetail
```

Constructs PortProbeDetail's fields from required parameters

#### `PrivateDnsName`

``` purescript
newtype PrivateDnsName
  = PrivateDnsName String
```

Private DNS name of the EC2 instance.

##### Instances
``` purescript
Newtype PrivateDnsName _
Generic PrivateDnsName _
Show PrivateDnsName
Decode PrivateDnsName
Encode PrivateDnsName
```

#### `PrivateIpAddress`

``` purescript
newtype PrivateIpAddress
  = PrivateIpAddress String
```

Private IP address of the EC2 instance.

##### Instances
``` purescript
Newtype PrivateIpAddress _
Generic PrivateIpAddress _
Show PrivateIpAddress
Decode PrivateIpAddress
Encode PrivateIpAddress
```

#### `PrivateIpAddressDetails`

``` purescript
newtype PrivateIpAddressDetails
  = PrivateIpAddressDetails { "PrivateDnsName" :: Maybe (PrivateDnsName), "PrivateIpAddress" :: Maybe (PrivateIpAddress) }
```

Other private IP address information of the EC2 instance.

##### Instances
``` purescript
Newtype PrivateIpAddressDetails _
Generic PrivateIpAddressDetails _
Show PrivateIpAddressDetails
Decode PrivateIpAddressDetails
Encode PrivateIpAddressDetails
```

#### `newPrivateIpAddressDetails`

``` purescript
newPrivateIpAddressDetails :: PrivateIpAddressDetails
```

Constructs PrivateIpAddressDetails from required parameters

#### `newPrivateIpAddressDetails'`

``` purescript
newPrivateIpAddressDetails' :: ({ "PrivateDnsName" :: Maybe (PrivateDnsName), "PrivateIpAddress" :: Maybe (PrivateIpAddress) } -> { "PrivateDnsName" :: Maybe (PrivateDnsName), "PrivateIpAddress" :: Maybe (PrivateIpAddress) }) -> PrivateIpAddressDetails
```

Constructs PrivateIpAddressDetails's fields from required parameters

#### `PrivateIpAddresses`

``` purescript
newtype PrivateIpAddresses
  = PrivateIpAddresses (Array PrivateIpAddressDetails)
```

Other private IP address information of the EC2 instance.

##### Instances
``` purescript
Newtype PrivateIpAddresses _
Generic PrivateIpAddresses _
Show PrivateIpAddresses
Decode PrivateIpAddresses
Encode PrivateIpAddresses
```

#### `ProductCode`

``` purescript
newtype ProductCode
  = ProductCode { "Code" :: Maybe (String), "ProductType" :: Maybe (String) }
```

The product code of the EC2 instance.

##### Instances
``` purescript
Newtype ProductCode _
Generic ProductCode _
Show ProductCode
Decode ProductCode
Encode ProductCode
```

#### `newProductCode`

``` purescript
newProductCode :: ProductCode
```

Constructs ProductCode from required parameters

#### `newProductCode'`

``` purescript
newProductCode' :: ({ "Code" :: Maybe (String), "ProductType" :: Maybe (String) } -> { "Code" :: Maybe (String), "ProductType" :: Maybe (String) }) -> ProductCode
```

Constructs ProductCode's fields from required parameters

#### `ProductCodes`

``` purescript
newtype ProductCodes
  = ProductCodes (Array ProductCode)
```

The product code of the EC2 instance.

##### Instances
``` purescript
Newtype ProductCodes _
Generic ProductCodes _
Show ProductCodes
Decode ProductCodes
Encode ProductCodes
```

#### `RemoteIpDetails`

``` purescript
newtype RemoteIpDetails
  = RemoteIpDetails { "City" :: Maybe (City), "Country" :: Maybe (Country), "GeoLocation" :: Maybe (GeoLocation), "IpAddressV4" :: Maybe (String), "Organization" :: Maybe (Organization) }
```

Remote IP information of the connection.

##### Instances
``` purescript
Newtype RemoteIpDetails _
Generic RemoteIpDetails _
Show RemoteIpDetails
Decode RemoteIpDetails
Encode RemoteIpDetails
```

#### `newRemoteIpDetails`

``` purescript
newRemoteIpDetails :: RemoteIpDetails
```

Constructs RemoteIpDetails from required parameters

#### `newRemoteIpDetails'`

``` purescript
newRemoteIpDetails' :: ({ "City" :: Maybe (City), "Country" :: Maybe (Country), "GeoLocation" :: Maybe (GeoLocation), "IpAddressV4" :: Maybe (String), "Organization" :: Maybe (Organization) } -> { "City" :: Maybe (City), "Country" :: Maybe (Country), "GeoLocation" :: Maybe (GeoLocation), "IpAddressV4" :: Maybe (String), "Organization" :: Maybe (Organization) }) -> RemoteIpDetails
```

Constructs RemoteIpDetails's fields from required parameters

#### `RemotePortDetails`

``` purescript
newtype RemotePortDetails
  = RemotePortDetails { "Port" :: Maybe (Int), "PortName" :: Maybe (String) }
```

Remote port information of the connection.

##### Instances
``` purescript
Newtype RemotePortDetails _
Generic RemotePortDetails _
Show RemotePortDetails
Decode RemotePortDetails
Encode RemotePortDetails
```

#### `newRemotePortDetails`

``` purescript
newRemotePortDetails :: RemotePortDetails
```

Constructs RemotePortDetails from required parameters

#### `newRemotePortDetails'`

``` purescript
newRemotePortDetails' :: ({ "Port" :: Maybe (Int), "PortName" :: Maybe (String) } -> { "Port" :: Maybe (Int), "PortName" :: Maybe (String) }) -> RemotePortDetails
```

Constructs RemotePortDetails's fields from required parameters

#### `Resource`

``` purescript
newtype Resource
  = Resource { "AccessKeyDetails" :: Maybe (AccessKeyDetails), "InstanceDetails" :: Maybe (InstanceDetails), "ResourceType" :: Maybe (String) }
```

The AWS resource associated with the activity that prompted GuardDuty to generate a finding.

##### Instances
``` purescript
Newtype Resource _
Generic Resource _
Show Resource
Decode Resource
Encode Resource
```

#### `newResource`

``` purescript
newResource :: Resource
```

Constructs Resource from required parameters

#### `newResource'`

``` purescript
newResource' :: ({ "AccessKeyDetails" :: Maybe (AccessKeyDetails), "InstanceDetails" :: Maybe (InstanceDetails), "ResourceType" :: Maybe (String) } -> { "AccessKeyDetails" :: Maybe (AccessKeyDetails), "InstanceDetails" :: Maybe (InstanceDetails), "ResourceType" :: Maybe (String) }) -> Resource
```

Constructs Resource's fields from required parameters

#### `SecurityGroup`

``` purescript
newtype SecurityGroup
  = SecurityGroup { "GroupId" :: Maybe (String), "GroupName" :: Maybe (String) }
```

Security groups associated with the EC2 instance.

##### Instances
``` purescript
Newtype SecurityGroup _
Generic SecurityGroup _
Show SecurityGroup
Decode SecurityGroup
Encode SecurityGroup
```

#### `newSecurityGroup`

``` purescript
newSecurityGroup :: SecurityGroup
```

Constructs SecurityGroup from required parameters

#### `newSecurityGroup'`

``` purescript
newSecurityGroup' :: ({ "GroupId" :: Maybe (String), "GroupName" :: Maybe (String) } -> { "GroupId" :: Maybe (String), "GroupName" :: Maybe (String) }) -> SecurityGroup
```

Constructs SecurityGroup's fields from required parameters

#### `SecurityGroups`

``` purescript
newtype SecurityGroups
  = SecurityGroups (Array SecurityGroup)
```

Security groups associated with the EC2 instance.

##### Instances
``` purescript
Newtype SecurityGroups _
Generic SecurityGroups _
Show SecurityGroups
Decode SecurityGroups
Encode SecurityGroups
```

#### `Service`

``` purescript
newtype Service
  = Service { "Action" :: Maybe (Action), "Archived" :: Maybe (Boolean), "Count" :: Maybe (Int), "DetectorId" :: Maybe (DetectorId), "EventFirstSeen" :: Maybe (String), "EventLastSeen" :: Maybe (String), "ResourceRole" :: Maybe (String), "ServiceName" :: Maybe (String), "UserFeedback" :: Maybe (String) }
```

Additional information assigned to the generated finding by GuardDuty.

##### Instances
``` purescript
Newtype Service _
Generic Service _
Show Service
Decode Service
Encode Service
```

#### `newService`

``` purescript
newService :: Service
```

Constructs Service from required parameters

#### `newService'`

``` purescript
newService' :: ({ "Action" :: Maybe (Action), "Archived" :: Maybe (Boolean), "Count" :: Maybe (Int), "DetectorId" :: Maybe (DetectorId), "EventFirstSeen" :: Maybe (String), "EventLastSeen" :: Maybe (String), "ResourceRole" :: Maybe (String), "ServiceName" :: Maybe (String), "UserFeedback" :: Maybe (String) } -> { "Action" :: Maybe (Action), "Archived" :: Maybe (Boolean), "Count" :: Maybe (Int), "DetectorId" :: Maybe (DetectorId), "EventFirstSeen" :: Maybe (String), "EventLastSeen" :: Maybe (String), "ResourceRole" :: Maybe (String), "ServiceName" :: Maybe (String), "UserFeedback" :: Maybe (String) }) -> Service
```

Constructs Service's fields from required parameters

#### `ServiceRole`

``` purescript
newtype ServiceRole
  = ServiceRole String
```

Customer serviceRole name or ARN for accessing customer resources

##### Instances
``` purescript
Newtype ServiceRole _
Generic ServiceRole _
Show ServiceRole
Decode ServiceRole
Encode ServiceRole
```

#### `SortCriteria`

``` purescript
newtype SortCriteria
  = SortCriteria { "AttributeName" :: Maybe (String), "OrderBy" :: Maybe (OrderBy) }
```

Represents the criteria used for sorting findings.

##### Instances
``` purescript
Newtype SortCriteria _
Generic SortCriteria _
Show SortCriteria
Decode SortCriteria
Encode SortCriteria
```

#### `newSortCriteria`

``` purescript
newSortCriteria :: SortCriteria
```

Constructs SortCriteria from required parameters

#### `newSortCriteria'`

``` purescript
newSortCriteria' :: ({ "AttributeName" :: Maybe (String), "OrderBy" :: Maybe (OrderBy) } -> { "AttributeName" :: Maybe (String), "OrderBy" :: Maybe (OrderBy) }) -> SortCriteria
```

Constructs SortCriteria's fields from required parameters

#### `StartMonitoringMembersRequest`

``` purescript
newtype StartMonitoringMembersRequest
  = StartMonitoringMembersRequest { "AccountIds" :: Maybe (AccountIds), "DetectorId" :: String }
```

StartMonitoringMembers request body.

##### Instances
``` purescript
Newtype StartMonitoringMembersRequest _
Generic StartMonitoringMembersRequest _
Show StartMonitoringMembersRequest
Decode StartMonitoringMembersRequest
Encode StartMonitoringMembersRequest
```

#### `newStartMonitoringMembersRequest`

``` purescript
newStartMonitoringMembersRequest :: String -> StartMonitoringMembersRequest
```

Constructs StartMonitoringMembersRequest from required parameters

#### `newStartMonitoringMembersRequest'`

``` purescript
newStartMonitoringMembersRequest' :: String -> ({ "AccountIds" :: Maybe (AccountIds), "DetectorId" :: String } -> { "AccountIds" :: Maybe (AccountIds), "DetectorId" :: String }) -> StartMonitoringMembersRequest
```

Constructs StartMonitoringMembersRequest's fields from required parameters

#### `StartMonitoringMembersResponse`

``` purescript
newtype StartMonitoringMembersResponse
  = StartMonitoringMembersResponse { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) }
```

##### Instances
``` purescript
Newtype StartMonitoringMembersResponse _
Generic StartMonitoringMembersResponse _
Show StartMonitoringMembersResponse
Decode StartMonitoringMembersResponse
Encode StartMonitoringMembersResponse
```

#### `newStartMonitoringMembersResponse`

``` purescript
newStartMonitoringMembersResponse :: StartMonitoringMembersResponse
```

Constructs StartMonitoringMembersResponse from required parameters

#### `newStartMonitoringMembersResponse'`

``` purescript
newStartMonitoringMembersResponse' :: ({ "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) } -> { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) }) -> StartMonitoringMembersResponse
```

Constructs StartMonitoringMembersResponse's fields from required parameters

#### `StopMonitoringMembersRequest`

``` purescript
newtype StopMonitoringMembersRequest
  = StopMonitoringMembersRequest { "AccountIds" :: Maybe (AccountIds), "DetectorId" :: String }
```

StopMonitoringMembers request body.

##### Instances
``` purescript
Newtype StopMonitoringMembersRequest _
Generic StopMonitoringMembersRequest _
Show StopMonitoringMembersRequest
Decode StopMonitoringMembersRequest
Encode StopMonitoringMembersRequest
```

#### `newStopMonitoringMembersRequest`

``` purescript
newStopMonitoringMembersRequest :: String -> StopMonitoringMembersRequest
```

Constructs StopMonitoringMembersRequest from required parameters

#### `newStopMonitoringMembersRequest'`

``` purescript
newStopMonitoringMembersRequest' :: String -> ({ "AccountIds" :: Maybe (AccountIds), "DetectorId" :: String } -> { "AccountIds" :: Maybe (AccountIds), "DetectorId" :: String }) -> StopMonitoringMembersRequest
```

Constructs StopMonitoringMembersRequest's fields from required parameters

#### `StopMonitoringMembersResponse`

``` purescript
newtype StopMonitoringMembersResponse
  = StopMonitoringMembersResponse { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) }
```

##### Instances
``` purescript
Newtype StopMonitoringMembersResponse _
Generic StopMonitoringMembersResponse _
Show StopMonitoringMembersResponse
Decode StopMonitoringMembersResponse
Encode StopMonitoringMembersResponse
```

#### `newStopMonitoringMembersResponse`

``` purescript
newStopMonitoringMembersResponse :: StopMonitoringMembersResponse
```

Constructs StopMonitoringMembersResponse from required parameters

#### `newStopMonitoringMembersResponse'`

``` purescript
newStopMonitoringMembersResponse' :: ({ "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) } -> { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) }) -> StopMonitoringMembersResponse
```

Constructs StopMonitoringMembersResponse's fields from required parameters

#### `Tag`

``` purescript
newtype Tag
  = Tag { "Key" :: Maybe (String), "Value" :: Maybe (String) }
```

A tag of the EC2 instance.

##### Instances
``` purescript
Newtype Tag _
Generic Tag _
Show Tag
Decode Tag
Encode Tag
```

#### `newTag`

``` purescript
newTag :: Tag
```

Constructs Tag from required parameters

#### `newTag'`

``` purescript
newTag' :: ({ "Key" :: Maybe (String), "Value" :: Maybe (String) } -> { "Key" :: Maybe (String), "Value" :: Maybe (String) }) -> Tag
```

Constructs Tag's fields from required parameters

#### `Tags`

``` purescript
newtype Tags
  = Tags (Array Tag)
```

The tags of the EC2 instance.

##### Instances
``` purescript
Newtype Tags _
Generic Tags _
Show Tags
Decode Tags
Encode Tags
```

#### `ThreatIntelSetFormat`

``` purescript
newtype ThreatIntelSetFormat
  = ThreatIntelSetFormat String
```

The format of the threatIntelSet.

##### Instances
``` purescript
Newtype ThreatIntelSetFormat _
Generic ThreatIntelSetFormat _
Show ThreatIntelSetFormat
Decode ThreatIntelSetFormat
Encode ThreatIntelSetFormat
```

#### `ThreatIntelSetId`

``` purescript
newtype ThreatIntelSetId
  = ThreatIntelSetId String
```

The unique identifier for an threat intel set

##### Instances
``` purescript
Newtype ThreatIntelSetId _
Generic ThreatIntelSetId _
Show ThreatIntelSetId
Decode ThreatIntelSetId
Encode ThreatIntelSetId
```

#### `ThreatIntelSetIds`

``` purescript
newtype ThreatIntelSetIds
  = ThreatIntelSetIds (Array ThreatIntelSetId)
```

The list of the threat intel set IDs

##### Instances
``` purescript
Newtype ThreatIntelSetIds _
Generic ThreatIntelSetIds _
Show ThreatIntelSetIds
Decode ThreatIntelSetIds
Encode ThreatIntelSetIds
```

#### `ThreatIntelSetStatus`

``` purescript
newtype ThreatIntelSetStatus
  = ThreatIntelSetStatus String
```

The status of threatIntelSet file uploaded.

##### Instances
``` purescript
Newtype ThreatIntelSetStatus _
Generic ThreatIntelSetStatus _
Show ThreatIntelSetStatus
Decode ThreatIntelSetStatus
Encode ThreatIntelSetStatus
```

#### `UnarchiveFindingsRequest`

``` purescript
newtype UnarchiveFindingsRequest
  = UnarchiveFindingsRequest { "DetectorId" :: String, "FindingIds" :: Maybe (FindingIds) }
```

UnarchiveFindings request body.

##### Instances
``` purescript
Newtype UnarchiveFindingsRequest _
Generic UnarchiveFindingsRequest _
Show UnarchiveFindingsRequest
Decode UnarchiveFindingsRequest
Encode UnarchiveFindingsRequest
```

#### `newUnarchiveFindingsRequest`

``` purescript
newUnarchiveFindingsRequest :: String -> UnarchiveFindingsRequest
```

Constructs UnarchiveFindingsRequest from required parameters

#### `newUnarchiveFindingsRequest'`

``` purescript
newUnarchiveFindingsRequest' :: String -> ({ "DetectorId" :: String, "FindingIds" :: Maybe (FindingIds) } -> { "DetectorId" :: String, "FindingIds" :: Maybe (FindingIds) }) -> UnarchiveFindingsRequest
```

Constructs UnarchiveFindingsRequest's fields from required parameters

#### `UnarchiveFindingsResponse`

``` purescript
newtype UnarchiveFindingsResponse
  = UnarchiveFindingsResponse NoArguments
```

##### Instances
``` purescript
Newtype UnarchiveFindingsResponse _
Generic UnarchiveFindingsResponse _
Show UnarchiveFindingsResponse
Decode UnarchiveFindingsResponse
Encode UnarchiveFindingsResponse
```

#### `UnprocessedAccount`

``` purescript
newtype UnprocessedAccount
  = UnprocessedAccount { "AccountId" :: Maybe (String), "Result" :: Maybe (String) }
```

An object containing the unprocessed account and a result string explaining why it was unprocessed.

##### Instances
``` purescript
Newtype UnprocessedAccount _
Generic UnprocessedAccount _
Show UnprocessedAccount
Decode UnprocessedAccount
Encode UnprocessedAccount
```

#### `newUnprocessedAccount`

``` purescript
newUnprocessedAccount :: UnprocessedAccount
```

Constructs UnprocessedAccount from required parameters

#### `newUnprocessedAccount'`

``` purescript
newUnprocessedAccount' :: ({ "AccountId" :: Maybe (String), "Result" :: Maybe (String) } -> { "AccountId" :: Maybe (String), "Result" :: Maybe (String) }) -> UnprocessedAccount
```

Constructs UnprocessedAccount's fields from required parameters

#### `UnprocessedAccounts`

``` purescript
newtype UnprocessedAccounts
  = UnprocessedAccounts (Array UnprocessedAccount)
```

A list of objects containing the unprocessed account and a result string explaining why it was unprocessed.

##### Instances
``` purescript
Newtype UnprocessedAccounts _
Generic UnprocessedAccounts _
Show UnprocessedAccounts
Decode UnprocessedAccounts
Encode UnprocessedAccounts
```

#### `UpdateDetectorRequest`

``` purescript
newtype UpdateDetectorRequest
  = UpdateDetectorRequest { "DetectorId" :: String, "Enable" :: Maybe (Enable) }
```

UpdateDetector request body.

##### Instances
``` purescript
Newtype UpdateDetectorRequest _
Generic UpdateDetectorRequest _
Show UpdateDetectorRequest
Decode UpdateDetectorRequest
Encode UpdateDetectorRequest
```

#### `newUpdateDetectorRequest`

``` purescript
newUpdateDetectorRequest :: String -> UpdateDetectorRequest
```

Constructs UpdateDetectorRequest from required parameters

#### `newUpdateDetectorRequest'`

``` purescript
newUpdateDetectorRequest' :: String -> ({ "DetectorId" :: String, "Enable" :: Maybe (Enable) } -> { "DetectorId" :: String, "Enable" :: Maybe (Enable) }) -> UpdateDetectorRequest
```

Constructs UpdateDetectorRequest's fields from required parameters

#### `UpdateDetectorResponse`

``` purescript
newtype UpdateDetectorResponse
  = UpdateDetectorResponse NoArguments
```

##### Instances
``` purescript
Newtype UpdateDetectorResponse _
Generic UpdateDetectorResponse _
Show UpdateDetectorResponse
Decode UpdateDetectorResponse
Encode UpdateDetectorResponse
```

#### `UpdateFindingsFeedbackRequest`

``` purescript
newtype UpdateFindingsFeedbackRequest
  = UpdateFindingsFeedbackRequest { "Comments" :: Maybe (Comments), "DetectorId" :: String, "Feedback" :: Maybe (Feedback), "FindingIds" :: Maybe (FindingIds) }
```

UpdateFindingsFeedback request body.

##### Instances
``` purescript
Newtype UpdateFindingsFeedbackRequest _
Generic UpdateFindingsFeedbackRequest _
Show UpdateFindingsFeedbackRequest
Decode UpdateFindingsFeedbackRequest
Encode UpdateFindingsFeedbackRequest
```

#### `newUpdateFindingsFeedbackRequest`

``` purescript
newUpdateFindingsFeedbackRequest :: String -> UpdateFindingsFeedbackRequest
```

Constructs UpdateFindingsFeedbackRequest from required parameters

#### `newUpdateFindingsFeedbackRequest'`

``` purescript
newUpdateFindingsFeedbackRequest' :: String -> ({ "Comments" :: Maybe (Comments), "DetectorId" :: String, "Feedback" :: Maybe (Feedback), "FindingIds" :: Maybe (FindingIds) } -> { "Comments" :: Maybe (Comments), "DetectorId" :: String, "Feedback" :: Maybe (Feedback), "FindingIds" :: Maybe (FindingIds) }) -> UpdateFindingsFeedbackRequest
```

Constructs UpdateFindingsFeedbackRequest's fields from required parameters

#### `UpdateFindingsFeedbackResponse`

``` purescript
newtype UpdateFindingsFeedbackResponse
  = UpdateFindingsFeedbackResponse NoArguments
```

##### Instances
``` purescript
Newtype UpdateFindingsFeedbackResponse _
Generic UpdateFindingsFeedbackResponse _
Show UpdateFindingsFeedbackResponse
Decode UpdateFindingsFeedbackResponse
Encode UpdateFindingsFeedbackResponse
```

#### `UpdateIPSetRequest`

``` purescript
newtype UpdateIPSetRequest
  = UpdateIPSetRequest { "Activate" :: Maybe (Activate), "DetectorId" :: String, "IpSetId" :: String, "Location" :: Maybe (Location), "Name" :: Maybe (Name) }
```

UpdateIPSet request body.

##### Instances
``` purescript
Newtype UpdateIPSetRequest _
Generic UpdateIPSetRequest _
Show UpdateIPSetRequest
Decode UpdateIPSetRequest
Encode UpdateIPSetRequest
```

#### `newUpdateIPSetRequest`

``` purescript
newUpdateIPSetRequest :: String -> String -> UpdateIPSetRequest
```

Constructs UpdateIPSetRequest from required parameters

#### `newUpdateIPSetRequest'`

``` purescript
newUpdateIPSetRequest' :: String -> String -> ({ "Activate" :: Maybe (Activate), "DetectorId" :: String, "IpSetId" :: String, "Location" :: Maybe (Location), "Name" :: Maybe (Name) } -> { "Activate" :: Maybe (Activate), "DetectorId" :: String, "IpSetId" :: String, "Location" :: Maybe (Location), "Name" :: Maybe (Name) }) -> UpdateIPSetRequest
```

Constructs UpdateIPSetRequest's fields from required parameters

#### `UpdateIPSetResponse`

``` purescript
newtype UpdateIPSetResponse
  = UpdateIPSetResponse NoArguments
```

##### Instances
``` purescript
Newtype UpdateIPSetResponse _
Generic UpdateIPSetResponse _
Show UpdateIPSetResponse
Decode UpdateIPSetResponse
Encode UpdateIPSetResponse
```

#### `UpdateThreatIntelSetRequest`

``` purescript
newtype UpdateThreatIntelSetRequest
  = UpdateThreatIntelSetRequest { "Activate" :: Maybe (Activate), "DetectorId" :: String, "Location" :: Maybe (Location), "Name" :: Maybe (Name), "ThreatIntelSetId" :: String }
```

UpdateThreatIntelSet request body.

##### Instances
``` purescript
Newtype UpdateThreatIntelSetRequest _
Generic UpdateThreatIntelSetRequest _
Show UpdateThreatIntelSetRequest
Decode UpdateThreatIntelSetRequest
Encode UpdateThreatIntelSetRequest
```

#### `newUpdateThreatIntelSetRequest`

``` purescript
newUpdateThreatIntelSetRequest :: String -> String -> UpdateThreatIntelSetRequest
```

Constructs UpdateThreatIntelSetRequest from required parameters

#### `newUpdateThreatIntelSetRequest'`

``` purescript
newUpdateThreatIntelSetRequest' :: String -> String -> ({ "Activate" :: Maybe (Activate), "DetectorId" :: String, "Location" :: Maybe (Location), "Name" :: Maybe (Name), "ThreatIntelSetId" :: String } -> { "Activate" :: Maybe (Activate), "DetectorId" :: String, "Location" :: Maybe (Location), "Name" :: Maybe (Name), "ThreatIntelSetId" :: String }) -> UpdateThreatIntelSetRequest
```

Constructs UpdateThreatIntelSetRequest's fields from required parameters

#### `UpdateThreatIntelSetResponse`

``` purescript
newtype UpdateThreatIntelSetResponse
  = UpdateThreatIntelSetResponse NoArguments
```

##### Instances
``` purescript
Newtype UpdateThreatIntelSetResponse _
Generic UpdateThreatIntelSetResponse _
Show UpdateThreatIntelSetResponse
Decode UpdateThreatIntelSetResponse
Encode UpdateThreatIntelSetResponse
```

#### `UpdatedAt`

``` purescript
newtype UpdatedAt
  = UpdatedAt String
```

The first time a resource was created. The format will be ISO-8601.

##### Instances
``` purescript
Newtype UpdatedAt _
Generic UpdatedAt _
Show UpdatedAt
Decode UpdatedAt
Encode UpdatedAt
```


