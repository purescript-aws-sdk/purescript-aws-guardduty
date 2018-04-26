
module AWS.GuardDuty.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | AcceptInvitation request body.
newtype AcceptInvitationRequest = AcceptInvitationRequest 
  { "DetectorId" :: (String)
  , "InvitationId" :: Maybe (InvitationId)
  , "MasterId" :: Maybe (MasterId)
  }
derive instance newtypeAcceptInvitationRequest :: Newtype AcceptInvitationRequest _
derive instance repGenericAcceptInvitationRequest :: Generic AcceptInvitationRequest _
instance showAcceptInvitationRequest :: Show AcceptInvitationRequest where show = genericShow
instance decodeAcceptInvitationRequest :: Decode AcceptInvitationRequest where decode = genericDecode options
instance encodeAcceptInvitationRequest :: Encode AcceptInvitationRequest where encode = genericEncode options

-- | Constructs AcceptInvitationRequest from required parameters
newAcceptInvitationRequest :: String -> AcceptInvitationRequest
newAcceptInvitationRequest _DetectorId = AcceptInvitationRequest { "DetectorId": _DetectorId, "InvitationId": Nothing, "MasterId": Nothing }

-- | Constructs AcceptInvitationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAcceptInvitationRequest' :: String -> ( { "DetectorId" :: (String) , "InvitationId" :: Maybe (InvitationId) , "MasterId" :: Maybe (MasterId) } -> {"DetectorId" :: (String) , "InvitationId" :: Maybe (InvitationId) , "MasterId" :: Maybe (MasterId) } ) -> AcceptInvitationRequest
newAcceptInvitationRequest' _DetectorId customize = (AcceptInvitationRequest <<< customize) { "DetectorId": _DetectorId, "InvitationId": Nothing, "MasterId": Nothing }



newtype AcceptInvitationResponse = AcceptInvitationResponse Types.NoArguments
derive instance newtypeAcceptInvitationResponse :: Newtype AcceptInvitationResponse _
derive instance repGenericAcceptInvitationResponse :: Generic AcceptInvitationResponse _
instance showAcceptInvitationResponse :: Show AcceptInvitationResponse where show = genericShow
instance decodeAcceptInvitationResponse :: Decode AcceptInvitationResponse where decode = genericDecode options
instance encodeAcceptInvitationResponse :: Encode AcceptInvitationResponse where encode = genericEncode options



-- | The IAM access key details (IAM user information) of a user that engaged in the activity that prompted GuardDuty to generate a finding.
newtype AccessKeyDetails = AccessKeyDetails 
  { "AccessKeyId" :: Maybe (String)
  , "PrincipalId" :: Maybe (String)
  , "UserName" :: Maybe (String)
  , "UserType" :: Maybe (String)
  }
derive instance newtypeAccessKeyDetails :: Newtype AccessKeyDetails _
derive instance repGenericAccessKeyDetails :: Generic AccessKeyDetails _
instance showAccessKeyDetails :: Show AccessKeyDetails where show = genericShow
instance decodeAccessKeyDetails :: Decode AccessKeyDetails where decode = genericDecode options
instance encodeAccessKeyDetails :: Encode AccessKeyDetails where encode = genericEncode options

-- | Constructs AccessKeyDetails from required parameters
newAccessKeyDetails :: AccessKeyDetails
newAccessKeyDetails  = AccessKeyDetails { "AccessKeyId": Nothing, "PrincipalId": Nothing, "UserName": Nothing, "UserType": Nothing }

-- | Constructs AccessKeyDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccessKeyDetails' :: ( { "AccessKeyId" :: Maybe (String) , "PrincipalId" :: Maybe (String) , "UserName" :: Maybe (String) , "UserType" :: Maybe (String) } -> {"AccessKeyId" :: Maybe (String) , "PrincipalId" :: Maybe (String) , "UserName" :: Maybe (String) , "UserType" :: Maybe (String) } ) -> AccessKeyDetails
newAccessKeyDetails'  customize = (AccessKeyDetails <<< customize) { "AccessKeyId": Nothing, "PrincipalId": Nothing, "UserName": Nothing, "UserType": Nothing }



-- | An object containing the member's accountId and email address.
newtype AccountDetail = AccountDetail 
  { "AccountId" :: Maybe (AccountId)
  , "Email" :: Maybe (Email)
  }
derive instance newtypeAccountDetail :: Newtype AccountDetail _
derive instance repGenericAccountDetail :: Generic AccountDetail _
instance showAccountDetail :: Show AccountDetail where show = genericShow
instance decodeAccountDetail :: Decode AccountDetail where decode = genericDecode options
instance encodeAccountDetail :: Encode AccountDetail where encode = genericEncode options

-- | Constructs AccountDetail from required parameters
newAccountDetail :: AccountDetail
newAccountDetail  = AccountDetail { "AccountId": Nothing, "Email": Nothing }

-- | Constructs AccountDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccountDetail' :: ( { "AccountId" :: Maybe (AccountId) , "Email" :: Maybe (Email) } -> {"AccountId" :: Maybe (AccountId) , "Email" :: Maybe (Email) } ) -> AccountDetail
newAccountDetail'  customize = (AccountDetail <<< customize) { "AccountId": Nothing, "Email": Nothing }



-- | A list of account/email pairs.
newtype AccountDetails = AccountDetails (Array AccountDetail)
derive instance newtypeAccountDetails :: Newtype AccountDetails _
derive instance repGenericAccountDetails :: Generic AccountDetails _
instance showAccountDetails :: Show AccountDetails where show = genericShow
instance decodeAccountDetails :: Decode AccountDetails where decode = genericDecode options
instance encodeAccountDetails :: Encode AccountDetails where encode = genericEncode options



-- | AWS account ID.
newtype AccountId = AccountId String
derive instance newtypeAccountId :: Newtype AccountId _
derive instance repGenericAccountId :: Generic AccountId _
instance showAccountId :: Show AccountId where show = genericShow
instance decodeAccountId :: Decode AccountId where decode = genericDecode options
instance encodeAccountId :: Encode AccountId where encode = genericEncode options



-- | A list of account IDs.
newtype AccountIds = AccountIds (Array String)
derive instance newtypeAccountIds :: Newtype AccountIds _
derive instance repGenericAccountIds :: Generic AccountIds _
instance showAccountIds :: Show AccountIds where show = genericShow
instance decodeAccountIds :: Decode AccountIds where decode = genericDecode options
instance encodeAccountIds :: Encode AccountIds where encode = genericEncode options



-- | Information about the activity described in a finding.
newtype Action = Action 
  { "ActionType" :: Maybe (String)
  , "AwsApiCallAction" :: Maybe (AwsApiCallAction)
  , "DnsRequestAction" :: Maybe (DnsRequestAction)
  , "NetworkConnectionAction" :: Maybe (NetworkConnectionAction)
  , "PortProbeAction" :: Maybe (PortProbeAction)
  }
derive instance newtypeAction :: Newtype Action _
derive instance repGenericAction :: Generic Action _
instance showAction :: Show Action where show = genericShow
instance decodeAction :: Decode Action where decode = genericDecode options
instance encodeAction :: Encode Action where encode = genericEncode options

-- | Constructs Action from required parameters
newAction :: Action
newAction  = Action { "ActionType": Nothing, "AwsApiCallAction": Nothing, "DnsRequestAction": Nothing, "NetworkConnectionAction": Nothing, "PortProbeAction": Nothing }

-- | Constructs Action's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAction' :: ( { "ActionType" :: Maybe (String) , "AwsApiCallAction" :: Maybe (AwsApiCallAction) , "DnsRequestAction" :: Maybe (DnsRequestAction) , "NetworkConnectionAction" :: Maybe (NetworkConnectionAction) , "PortProbeAction" :: Maybe (PortProbeAction) } -> {"ActionType" :: Maybe (String) , "AwsApiCallAction" :: Maybe (AwsApiCallAction) , "DnsRequestAction" :: Maybe (DnsRequestAction) , "NetworkConnectionAction" :: Maybe (NetworkConnectionAction) , "PortProbeAction" :: Maybe (PortProbeAction) } ) -> Action
newAction'  customize = (Action <<< customize) { "ActionType": Nothing, "AwsApiCallAction": Nothing, "DnsRequestAction": Nothing, "NetworkConnectionAction": Nothing, "PortProbeAction": Nothing }



-- | Whether we should start processing the list immediately or not.
newtype Activate = Activate Boolean
derive instance newtypeActivate :: Newtype Activate _
derive instance repGenericActivate :: Generic Activate _
instance showActivate :: Show Activate where show = genericShow
instance decodeActivate :: Decode Activate where decode = genericDecode options
instance encodeActivate :: Encode Activate where encode = genericEncode options



-- | ArchiveFindings request body.
newtype ArchiveFindingsRequest = ArchiveFindingsRequest 
  { "DetectorId" :: (String)
  , "FindingIds" :: Maybe (FindingIds)
  }
derive instance newtypeArchiveFindingsRequest :: Newtype ArchiveFindingsRequest _
derive instance repGenericArchiveFindingsRequest :: Generic ArchiveFindingsRequest _
instance showArchiveFindingsRequest :: Show ArchiveFindingsRequest where show = genericShow
instance decodeArchiveFindingsRequest :: Decode ArchiveFindingsRequest where decode = genericDecode options
instance encodeArchiveFindingsRequest :: Encode ArchiveFindingsRequest where encode = genericEncode options

-- | Constructs ArchiveFindingsRequest from required parameters
newArchiveFindingsRequest :: String -> ArchiveFindingsRequest
newArchiveFindingsRequest _DetectorId = ArchiveFindingsRequest { "DetectorId": _DetectorId, "FindingIds": Nothing }

-- | Constructs ArchiveFindingsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newArchiveFindingsRequest' :: String -> ( { "DetectorId" :: (String) , "FindingIds" :: Maybe (FindingIds) } -> {"DetectorId" :: (String) , "FindingIds" :: Maybe (FindingIds) } ) -> ArchiveFindingsRequest
newArchiveFindingsRequest' _DetectorId customize = (ArchiveFindingsRequest <<< customize) { "DetectorId": _DetectorId, "FindingIds": Nothing }



newtype ArchiveFindingsResponse = ArchiveFindingsResponse Types.NoArguments
derive instance newtypeArchiveFindingsResponse :: Newtype ArchiveFindingsResponse _
derive instance repGenericArchiveFindingsResponse :: Generic ArchiveFindingsResponse _
instance showArchiveFindingsResponse :: Show ArchiveFindingsResponse where show = genericShow
instance decodeArchiveFindingsResponse :: Decode ArchiveFindingsResponse where decode = genericDecode options
instance encodeArchiveFindingsResponse :: Encode ArchiveFindingsResponse where encode = genericEncode options



-- | Information about the AWS_API_CALL action described in this finding.
newtype AwsApiCallAction = AwsApiCallAction 
  { "Api" :: Maybe (String)
  , "CallerType" :: Maybe (String)
  , "DomainDetails" :: Maybe (DomainDetails)
  , "RemoteIpDetails" :: Maybe (RemoteIpDetails)
  , "ServiceName" :: Maybe (String)
  }
derive instance newtypeAwsApiCallAction :: Newtype AwsApiCallAction _
derive instance repGenericAwsApiCallAction :: Generic AwsApiCallAction _
instance showAwsApiCallAction :: Show AwsApiCallAction where show = genericShow
instance decodeAwsApiCallAction :: Decode AwsApiCallAction where decode = genericDecode options
instance encodeAwsApiCallAction :: Encode AwsApiCallAction where encode = genericEncode options

-- | Constructs AwsApiCallAction from required parameters
newAwsApiCallAction :: AwsApiCallAction
newAwsApiCallAction  = AwsApiCallAction { "Api": Nothing, "CallerType": Nothing, "DomainDetails": Nothing, "RemoteIpDetails": Nothing, "ServiceName": Nothing }

-- | Constructs AwsApiCallAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAwsApiCallAction' :: ( { "Api" :: Maybe (String) , "CallerType" :: Maybe (String) , "DomainDetails" :: Maybe (DomainDetails) , "RemoteIpDetails" :: Maybe (RemoteIpDetails) , "ServiceName" :: Maybe (String) } -> {"Api" :: Maybe (String) , "CallerType" :: Maybe (String) , "DomainDetails" :: Maybe (DomainDetails) , "RemoteIpDetails" :: Maybe (RemoteIpDetails) , "ServiceName" :: Maybe (String) } ) -> AwsApiCallAction
newAwsApiCallAction'  customize = (AwsApiCallAction <<< customize) { "Api": Nothing, "CallerType": Nothing, "DomainDetails": Nothing, "RemoteIpDetails": Nothing, "ServiceName": Nothing }



-- | Error response object.
newtype BadRequestException = BadRequestException 
  { "Message" :: Maybe (String)
  , "Type" :: Maybe (String)
  }
derive instance newtypeBadRequestException :: Newtype BadRequestException _
derive instance repGenericBadRequestException :: Generic BadRequestException _
instance showBadRequestException :: Show BadRequestException where show = genericShow
instance decodeBadRequestException :: Decode BadRequestException where decode = genericDecode options
instance encodeBadRequestException :: Encode BadRequestException where encode = genericEncode options

-- | Constructs BadRequestException from required parameters
newBadRequestException :: BadRequestException
newBadRequestException  = BadRequestException { "Message": Nothing, "Type": Nothing }

-- | Constructs BadRequestException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBadRequestException' :: ( { "Message" :: Maybe (String) , "Type" :: Maybe (String) } -> {"Message" :: Maybe (String) , "Type" :: Maybe (String) } ) -> BadRequestException
newBadRequestException'  customize = (BadRequestException <<< customize) { "Message": Nothing, "Type": Nothing }



-- | City information of the remote IP address.
newtype City = City 
  { "CityName" :: Maybe (String)
  }
derive instance newtypeCity :: Newtype City _
derive instance repGenericCity :: Generic City _
instance showCity :: Show City where show = genericShow
instance decodeCity :: Decode City where decode = genericDecode options
instance encodeCity :: Encode City where encode = genericEncode options

-- | Constructs City from required parameters
newCity :: City
newCity  = City { "CityName": Nothing }

-- | Constructs City's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCity' :: ( { "CityName" :: Maybe (String) } -> {"CityName" :: Maybe (String) } ) -> City
newCity'  customize = (City <<< customize) { "CityName": Nothing }



-- | Additional feedback about the GuardDuty findings.
newtype Comments = Comments String
derive instance newtypeComments :: Newtype Comments _
derive instance repGenericComments :: Generic Comments _
instance showComments :: Show Comments where show = genericShow
instance decodeComments :: Decode Comments where decode = genericDecode options
instance encodeComments :: Encode Comments where encode = genericEncode options



-- | Finding attribute (for example, accountId) for which conditions and values must be specified when querying findings.
newtype Condition = Condition 
  { "Eq" :: Maybe (Eq)
  , "Gt" :: Maybe (Int)
  , "Gte" :: Maybe (Int)
  , "Lt" :: Maybe (Int)
  , "Lte" :: Maybe (Int)
  , "Neq" :: Maybe (Neq)
  }
derive instance newtypeCondition :: Newtype Condition _
derive instance repGenericCondition :: Generic Condition _
instance showCondition :: Show Condition where show = genericShow
instance decodeCondition :: Decode Condition where decode = genericDecode options
instance encodeCondition :: Encode Condition where encode = genericEncode options

-- | Constructs Condition from required parameters
newCondition :: Condition
newCondition  = Condition { "Eq": Nothing, "Gt": Nothing, "Gte": Nothing, "Lt": Nothing, "Lte": Nothing, "Neq": Nothing }

-- | Constructs Condition's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCondition' :: ( { "Eq" :: Maybe (Eq) , "Gt" :: Maybe (Int) , "Gte" :: Maybe (Int) , "Lt" :: Maybe (Int) , "Lte" :: Maybe (Int) , "Neq" :: Maybe (Neq) } -> {"Eq" :: Maybe (Eq) , "Gt" :: Maybe (Int) , "Gte" :: Maybe (Int) , "Lt" :: Maybe (Int) , "Lte" :: Maybe (Int) , "Neq" :: Maybe (Neq) } ) -> Condition
newCondition'  customize = (Condition <<< customize) { "Eq": Nothing, "Gt": Nothing, "Gte": Nothing, "Lt": Nothing, "Lte": Nothing, "Neq": Nothing }



-- | The count of findings for the given severity.
newtype CountBySeverityFindingStatistic = CountBySeverityFindingStatistic Int
derive instance newtypeCountBySeverityFindingStatistic :: Newtype CountBySeverityFindingStatistic _
derive instance repGenericCountBySeverityFindingStatistic :: Generic CountBySeverityFindingStatistic _
instance showCountBySeverityFindingStatistic :: Show CountBySeverityFindingStatistic where show = genericShow
instance decodeCountBySeverityFindingStatistic :: Decode CountBySeverityFindingStatistic where decode = genericDecode options
instance encodeCountBySeverityFindingStatistic :: Encode CountBySeverityFindingStatistic where encode = genericEncode options



-- | Country information of the remote IP address.
newtype Country = Country 
  { "CountryCode" :: Maybe (String)
  , "CountryName" :: Maybe (String)
  }
derive instance newtypeCountry :: Newtype Country _
derive instance repGenericCountry :: Generic Country _
instance showCountry :: Show Country where show = genericShow
instance decodeCountry :: Decode Country where decode = genericDecode options
instance encodeCountry :: Encode Country where encode = genericEncode options

-- | Constructs Country from required parameters
newCountry :: Country
newCountry  = Country { "CountryCode": Nothing, "CountryName": Nothing }

-- | Constructs Country's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCountry' :: ( { "CountryCode" :: Maybe (String) , "CountryName" :: Maybe (String) } -> {"CountryCode" :: Maybe (String) , "CountryName" :: Maybe (String) } ) -> Country
newCountry'  customize = (Country <<< customize) { "CountryCode": Nothing, "CountryName": Nothing }



-- | CreateDetector request body.
newtype CreateDetectorRequest = CreateDetectorRequest 
  { "Enable" :: Maybe (Enable)
  }
derive instance newtypeCreateDetectorRequest :: Newtype CreateDetectorRequest _
derive instance repGenericCreateDetectorRequest :: Generic CreateDetectorRequest _
instance showCreateDetectorRequest :: Show CreateDetectorRequest where show = genericShow
instance decodeCreateDetectorRequest :: Decode CreateDetectorRequest where decode = genericDecode options
instance encodeCreateDetectorRequest :: Encode CreateDetectorRequest where encode = genericEncode options

-- | Constructs CreateDetectorRequest from required parameters
newCreateDetectorRequest :: CreateDetectorRequest
newCreateDetectorRequest  = CreateDetectorRequest { "Enable": Nothing }

-- | Constructs CreateDetectorRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateDetectorRequest' :: ( { "Enable" :: Maybe (Enable) } -> {"Enable" :: Maybe (Enable) } ) -> CreateDetectorRequest
newCreateDetectorRequest'  customize = (CreateDetectorRequest <<< customize) { "Enable": Nothing }



newtype CreateDetectorResponse = CreateDetectorResponse 
  { "DetectorId" :: Maybe (DetectorId)
  }
derive instance newtypeCreateDetectorResponse :: Newtype CreateDetectorResponse _
derive instance repGenericCreateDetectorResponse :: Generic CreateDetectorResponse _
instance showCreateDetectorResponse :: Show CreateDetectorResponse where show = genericShow
instance decodeCreateDetectorResponse :: Decode CreateDetectorResponse where decode = genericDecode options
instance encodeCreateDetectorResponse :: Encode CreateDetectorResponse where encode = genericEncode options

-- | Constructs CreateDetectorResponse from required parameters
newCreateDetectorResponse :: CreateDetectorResponse
newCreateDetectorResponse  = CreateDetectorResponse { "DetectorId": Nothing }

-- | Constructs CreateDetectorResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateDetectorResponse' :: ( { "DetectorId" :: Maybe (DetectorId) } -> {"DetectorId" :: Maybe (DetectorId) } ) -> CreateDetectorResponse
newCreateDetectorResponse'  customize = (CreateDetectorResponse <<< customize) { "DetectorId": Nothing }



-- | CreateIPSet request body.
newtype CreateIPSetRequest = CreateIPSetRequest 
  { "Activate" :: Maybe (Activate)
  , "DetectorId" :: (String)
  , "Format" :: Maybe (IpSetFormat)
  , "Location" :: Maybe (Location)
  , "Name" :: Maybe (Name)
  }
derive instance newtypeCreateIPSetRequest :: Newtype CreateIPSetRequest _
derive instance repGenericCreateIPSetRequest :: Generic CreateIPSetRequest _
instance showCreateIPSetRequest :: Show CreateIPSetRequest where show = genericShow
instance decodeCreateIPSetRequest :: Decode CreateIPSetRequest where decode = genericDecode options
instance encodeCreateIPSetRequest :: Encode CreateIPSetRequest where encode = genericEncode options

-- | Constructs CreateIPSetRequest from required parameters
newCreateIPSetRequest :: String -> CreateIPSetRequest
newCreateIPSetRequest _DetectorId = CreateIPSetRequest { "DetectorId": _DetectorId, "Activate": Nothing, "Format": Nothing, "Location": Nothing, "Name": Nothing }

-- | Constructs CreateIPSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateIPSetRequest' :: String -> ( { "Activate" :: Maybe (Activate) , "DetectorId" :: (String) , "Format" :: Maybe (IpSetFormat) , "Location" :: Maybe (Location) , "Name" :: Maybe (Name) } -> {"Activate" :: Maybe (Activate) , "DetectorId" :: (String) , "Format" :: Maybe (IpSetFormat) , "Location" :: Maybe (Location) , "Name" :: Maybe (Name) } ) -> CreateIPSetRequest
newCreateIPSetRequest' _DetectorId customize = (CreateIPSetRequest <<< customize) { "DetectorId": _DetectorId, "Activate": Nothing, "Format": Nothing, "Location": Nothing, "Name": Nothing }



newtype CreateIPSetResponse = CreateIPSetResponse 
  { "IpSetId" :: Maybe (IpSetId)
  }
derive instance newtypeCreateIPSetResponse :: Newtype CreateIPSetResponse _
derive instance repGenericCreateIPSetResponse :: Generic CreateIPSetResponse _
instance showCreateIPSetResponse :: Show CreateIPSetResponse where show = genericShow
instance decodeCreateIPSetResponse :: Decode CreateIPSetResponse where decode = genericDecode options
instance encodeCreateIPSetResponse :: Encode CreateIPSetResponse where encode = genericEncode options

-- | Constructs CreateIPSetResponse from required parameters
newCreateIPSetResponse :: CreateIPSetResponse
newCreateIPSetResponse  = CreateIPSetResponse { "IpSetId": Nothing }

-- | Constructs CreateIPSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateIPSetResponse' :: ( { "IpSetId" :: Maybe (IpSetId) } -> {"IpSetId" :: Maybe (IpSetId) } ) -> CreateIPSetResponse
newCreateIPSetResponse'  customize = (CreateIPSetResponse <<< customize) { "IpSetId": Nothing }



-- | CreateMembers request body.
newtype CreateMembersRequest = CreateMembersRequest 
  { "AccountDetails" :: Maybe (AccountDetails)
  , "DetectorId" :: (String)
  }
derive instance newtypeCreateMembersRequest :: Newtype CreateMembersRequest _
derive instance repGenericCreateMembersRequest :: Generic CreateMembersRequest _
instance showCreateMembersRequest :: Show CreateMembersRequest where show = genericShow
instance decodeCreateMembersRequest :: Decode CreateMembersRequest where decode = genericDecode options
instance encodeCreateMembersRequest :: Encode CreateMembersRequest where encode = genericEncode options

-- | Constructs CreateMembersRequest from required parameters
newCreateMembersRequest :: String -> CreateMembersRequest
newCreateMembersRequest _DetectorId = CreateMembersRequest { "DetectorId": _DetectorId, "AccountDetails": Nothing }

-- | Constructs CreateMembersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateMembersRequest' :: String -> ( { "AccountDetails" :: Maybe (AccountDetails) , "DetectorId" :: (String) } -> {"AccountDetails" :: Maybe (AccountDetails) , "DetectorId" :: (String) } ) -> CreateMembersRequest
newCreateMembersRequest' _DetectorId customize = (CreateMembersRequest <<< customize) { "DetectorId": _DetectorId, "AccountDetails": Nothing }



newtype CreateMembersResponse = CreateMembersResponse 
  { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts)
  }
derive instance newtypeCreateMembersResponse :: Newtype CreateMembersResponse _
derive instance repGenericCreateMembersResponse :: Generic CreateMembersResponse _
instance showCreateMembersResponse :: Show CreateMembersResponse where show = genericShow
instance decodeCreateMembersResponse :: Decode CreateMembersResponse where decode = genericDecode options
instance encodeCreateMembersResponse :: Encode CreateMembersResponse where encode = genericEncode options

-- | Constructs CreateMembersResponse from required parameters
newCreateMembersResponse :: CreateMembersResponse
newCreateMembersResponse  = CreateMembersResponse { "UnprocessedAccounts": Nothing }

-- | Constructs CreateMembersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateMembersResponse' :: ( { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) } -> {"UnprocessedAccounts" :: Maybe (UnprocessedAccounts) } ) -> CreateMembersResponse
newCreateMembersResponse'  customize = (CreateMembersResponse <<< customize) { "UnprocessedAccounts": Nothing }



-- | CreateSampleFindings request body.
newtype CreateSampleFindingsRequest = CreateSampleFindingsRequest 
  { "DetectorId" :: (String)
  , "FindingTypes" :: Maybe (FindingTypes)
  }
derive instance newtypeCreateSampleFindingsRequest :: Newtype CreateSampleFindingsRequest _
derive instance repGenericCreateSampleFindingsRequest :: Generic CreateSampleFindingsRequest _
instance showCreateSampleFindingsRequest :: Show CreateSampleFindingsRequest where show = genericShow
instance decodeCreateSampleFindingsRequest :: Decode CreateSampleFindingsRequest where decode = genericDecode options
instance encodeCreateSampleFindingsRequest :: Encode CreateSampleFindingsRequest where encode = genericEncode options

-- | Constructs CreateSampleFindingsRequest from required parameters
newCreateSampleFindingsRequest :: String -> CreateSampleFindingsRequest
newCreateSampleFindingsRequest _DetectorId = CreateSampleFindingsRequest { "DetectorId": _DetectorId, "FindingTypes": Nothing }

-- | Constructs CreateSampleFindingsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateSampleFindingsRequest' :: String -> ( { "DetectorId" :: (String) , "FindingTypes" :: Maybe (FindingTypes) } -> {"DetectorId" :: (String) , "FindingTypes" :: Maybe (FindingTypes) } ) -> CreateSampleFindingsRequest
newCreateSampleFindingsRequest' _DetectorId customize = (CreateSampleFindingsRequest <<< customize) { "DetectorId": _DetectorId, "FindingTypes": Nothing }



newtype CreateSampleFindingsResponse = CreateSampleFindingsResponse Types.NoArguments
derive instance newtypeCreateSampleFindingsResponse :: Newtype CreateSampleFindingsResponse _
derive instance repGenericCreateSampleFindingsResponse :: Generic CreateSampleFindingsResponse _
instance showCreateSampleFindingsResponse :: Show CreateSampleFindingsResponse where show = genericShow
instance decodeCreateSampleFindingsResponse :: Decode CreateSampleFindingsResponse where decode = genericDecode options
instance encodeCreateSampleFindingsResponse :: Encode CreateSampleFindingsResponse where encode = genericEncode options



-- | CreateThreatIntelSet request body.
newtype CreateThreatIntelSetRequest = CreateThreatIntelSetRequest 
  { "Activate" :: Maybe (Activate)
  , "DetectorId" :: (String)
  , "Format" :: Maybe (ThreatIntelSetFormat)
  , "Location" :: Maybe (Location)
  , "Name" :: Maybe (Name)
  }
derive instance newtypeCreateThreatIntelSetRequest :: Newtype CreateThreatIntelSetRequest _
derive instance repGenericCreateThreatIntelSetRequest :: Generic CreateThreatIntelSetRequest _
instance showCreateThreatIntelSetRequest :: Show CreateThreatIntelSetRequest where show = genericShow
instance decodeCreateThreatIntelSetRequest :: Decode CreateThreatIntelSetRequest where decode = genericDecode options
instance encodeCreateThreatIntelSetRequest :: Encode CreateThreatIntelSetRequest where encode = genericEncode options

-- | Constructs CreateThreatIntelSetRequest from required parameters
newCreateThreatIntelSetRequest :: String -> CreateThreatIntelSetRequest
newCreateThreatIntelSetRequest _DetectorId = CreateThreatIntelSetRequest { "DetectorId": _DetectorId, "Activate": Nothing, "Format": Nothing, "Location": Nothing, "Name": Nothing }

-- | Constructs CreateThreatIntelSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateThreatIntelSetRequest' :: String -> ( { "Activate" :: Maybe (Activate) , "DetectorId" :: (String) , "Format" :: Maybe (ThreatIntelSetFormat) , "Location" :: Maybe (Location) , "Name" :: Maybe (Name) } -> {"Activate" :: Maybe (Activate) , "DetectorId" :: (String) , "Format" :: Maybe (ThreatIntelSetFormat) , "Location" :: Maybe (Location) , "Name" :: Maybe (Name) } ) -> CreateThreatIntelSetRequest
newCreateThreatIntelSetRequest' _DetectorId customize = (CreateThreatIntelSetRequest <<< customize) { "DetectorId": _DetectorId, "Activate": Nothing, "Format": Nothing, "Location": Nothing, "Name": Nothing }



newtype CreateThreatIntelSetResponse = CreateThreatIntelSetResponse 
  { "ThreatIntelSetId" :: Maybe (ThreatIntelSetId)
  }
derive instance newtypeCreateThreatIntelSetResponse :: Newtype CreateThreatIntelSetResponse _
derive instance repGenericCreateThreatIntelSetResponse :: Generic CreateThreatIntelSetResponse _
instance showCreateThreatIntelSetResponse :: Show CreateThreatIntelSetResponse where show = genericShow
instance decodeCreateThreatIntelSetResponse :: Decode CreateThreatIntelSetResponse where decode = genericDecode options
instance encodeCreateThreatIntelSetResponse :: Encode CreateThreatIntelSetResponse where encode = genericEncode options

-- | Constructs CreateThreatIntelSetResponse from required parameters
newCreateThreatIntelSetResponse :: CreateThreatIntelSetResponse
newCreateThreatIntelSetResponse  = CreateThreatIntelSetResponse { "ThreatIntelSetId": Nothing }

-- | Constructs CreateThreatIntelSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateThreatIntelSetResponse' :: ( { "ThreatIntelSetId" :: Maybe (ThreatIntelSetId) } -> {"ThreatIntelSetId" :: Maybe (ThreatIntelSetId) } ) -> CreateThreatIntelSetResponse
newCreateThreatIntelSetResponse'  customize = (CreateThreatIntelSetResponse <<< customize) { "ThreatIntelSetId": Nothing }



-- | The first time a resource was created. The format will be ISO-8601.
newtype CreatedAt = CreatedAt String
derive instance newtypeCreatedAt :: Newtype CreatedAt _
derive instance repGenericCreatedAt :: Generic CreatedAt _
instance showCreatedAt :: Show CreatedAt where show = genericShow
instance decodeCreatedAt :: Decode CreatedAt where decode = genericDecode options
instance encodeCreatedAt :: Encode CreatedAt where encode = genericEncode options



-- | DeclineInvitations request body.
newtype DeclineInvitationsRequest = DeclineInvitationsRequest 
  { "AccountIds" :: Maybe (AccountIds)
  }
derive instance newtypeDeclineInvitationsRequest :: Newtype DeclineInvitationsRequest _
derive instance repGenericDeclineInvitationsRequest :: Generic DeclineInvitationsRequest _
instance showDeclineInvitationsRequest :: Show DeclineInvitationsRequest where show = genericShow
instance decodeDeclineInvitationsRequest :: Decode DeclineInvitationsRequest where decode = genericDecode options
instance encodeDeclineInvitationsRequest :: Encode DeclineInvitationsRequest where encode = genericEncode options

-- | Constructs DeclineInvitationsRequest from required parameters
newDeclineInvitationsRequest :: DeclineInvitationsRequest
newDeclineInvitationsRequest  = DeclineInvitationsRequest { "AccountIds": Nothing }

-- | Constructs DeclineInvitationsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeclineInvitationsRequest' :: ( { "AccountIds" :: Maybe (AccountIds) } -> {"AccountIds" :: Maybe (AccountIds) } ) -> DeclineInvitationsRequest
newDeclineInvitationsRequest'  customize = (DeclineInvitationsRequest <<< customize) { "AccountIds": Nothing }



newtype DeclineInvitationsResponse = DeclineInvitationsResponse 
  { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts)
  }
derive instance newtypeDeclineInvitationsResponse :: Newtype DeclineInvitationsResponse _
derive instance repGenericDeclineInvitationsResponse :: Generic DeclineInvitationsResponse _
instance showDeclineInvitationsResponse :: Show DeclineInvitationsResponse where show = genericShow
instance decodeDeclineInvitationsResponse :: Decode DeclineInvitationsResponse where decode = genericDecode options
instance encodeDeclineInvitationsResponse :: Encode DeclineInvitationsResponse where encode = genericEncode options

-- | Constructs DeclineInvitationsResponse from required parameters
newDeclineInvitationsResponse :: DeclineInvitationsResponse
newDeclineInvitationsResponse  = DeclineInvitationsResponse { "UnprocessedAccounts": Nothing }

-- | Constructs DeclineInvitationsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeclineInvitationsResponse' :: ( { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) } -> {"UnprocessedAccounts" :: Maybe (UnprocessedAccounts) } ) -> DeclineInvitationsResponse
newDeclineInvitationsResponse'  customize = (DeclineInvitationsResponse <<< customize) { "UnprocessedAccounts": Nothing }



newtype DeleteDetectorRequest = DeleteDetectorRequest 
  { "DetectorId" :: (String)
  }
derive instance newtypeDeleteDetectorRequest :: Newtype DeleteDetectorRequest _
derive instance repGenericDeleteDetectorRequest :: Generic DeleteDetectorRequest _
instance showDeleteDetectorRequest :: Show DeleteDetectorRequest where show = genericShow
instance decodeDeleteDetectorRequest :: Decode DeleteDetectorRequest where decode = genericDecode options
instance encodeDeleteDetectorRequest :: Encode DeleteDetectorRequest where encode = genericEncode options

-- | Constructs DeleteDetectorRequest from required parameters
newDeleteDetectorRequest :: String -> DeleteDetectorRequest
newDeleteDetectorRequest _DetectorId = DeleteDetectorRequest { "DetectorId": _DetectorId }

-- | Constructs DeleteDetectorRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteDetectorRequest' :: String -> ( { "DetectorId" :: (String) } -> {"DetectorId" :: (String) } ) -> DeleteDetectorRequest
newDeleteDetectorRequest' _DetectorId customize = (DeleteDetectorRequest <<< customize) { "DetectorId": _DetectorId }



newtype DeleteDetectorResponse = DeleteDetectorResponse Types.NoArguments
derive instance newtypeDeleteDetectorResponse :: Newtype DeleteDetectorResponse _
derive instance repGenericDeleteDetectorResponse :: Generic DeleteDetectorResponse _
instance showDeleteDetectorResponse :: Show DeleteDetectorResponse where show = genericShow
instance decodeDeleteDetectorResponse :: Decode DeleteDetectorResponse where decode = genericDecode options
instance encodeDeleteDetectorResponse :: Encode DeleteDetectorResponse where encode = genericEncode options



newtype DeleteIPSetRequest = DeleteIPSetRequest 
  { "DetectorId" :: (String)
  , "IpSetId" :: (String)
  }
derive instance newtypeDeleteIPSetRequest :: Newtype DeleteIPSetRequest _
derive instance repGenericDeleteIPSetRequest :: Generic DeleteIPSetRequest _
instance showDeleteIPSetRequest :: Show DeleteIPSetRequest where show = genericShow
instance decodeDeleteIPSetRequest :: Decode DeleteIPSetRequest where decode = genericDecode options
instance encodeDeleteIPSetRequest :: Encode DeleteIPSetRequest where encode = genericEncode options

-- | Constructs DeleteIPSetRequest from required parameters
newDeleteIPSetRequest :: String -> String -> DeleteIPSetRequest
newDeleteIPSetRequest _DetectorId _IpSetId = DeleteIPSetRequest { "DetectorId": _DetectorId, "IpSetId": _IpSetId }

-- | Constructs DeleteIPSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteIPSetRequest' :: String -> String -> ( { "DetectorId" :: (String) , "IpSetId" :: (String) } -> {"DetectorId" :: (String) , "IpSetId" :: (String) } ) -> DeleteIPSetRequest
newDeleteIPSetRequest' _DetectorId _IpSetId customize = (DeleteIPSetRequest <<< customize) { "DetectorId": _DetectorId, "IpSetId": _IpSetId }



newtype DeleteIPSetResponse = DeleteIPSetResponse Types.NoArguments
derive instance newtypeDeleteIPSetResponse :: Newtype DeleteIPSetResponse _
derive instance repGenericDeleteIPSetResponse :: Generic DeleteIPSetResponse _
instance showDeleteIPSetResponse :: Show DeleteIPSetResponse where show = genericShow
instance decodeDeleteIPSetResponse :: Decode DeleteIPSetResponse where decode = genericDecode options
instance encodeDeleteIPSetResponse :: Encode DeleteIPSetResponse where encode = genericEncode options



-- | DeleteInvitations request body.
newtype DeleteInvitationsRequest = DeleteInvitationsRequest 
  { "AccountIds" :: Maybe (AccountIds)
  }
derive instance newtypeDeleteInvitationsRequest :: Newtype DeleteInvitationsRequest _
derive instance repGenericDeleteInvitationsRequest :: Generic DeleteInvitationsRequest _
instance showDeleteInvitationsRequest :: Show DeleteInvitationsRequest where show = genericShow
instance decodeDeleteInvitationsRequest :: Decode DeleteInvitationsRequest where decode = genericDecode options
instance encodeDeleteInvitationsRequest :: Encode DeleteInvitationsRequest where encode = genericEncode options

-- | Constructs DeleteInvitationsRequest from required parameters
newDeleteInvitationsRequest :: DeleteInvitationsRequest
newDeleteInvitationsRequest  = DeleteInvitationsRequest { "AccountIds": Nothing }

-- | Constructs DeleteInvitationsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteInvitationsRequest' :: ( { "AccountIds" :: Maybe (AccountIds) } -> {"AccountIds" :: Maybe (AccountIds) } ) -> DeleteInvitationsRequest
newDeleteInvitationsRequest'  customize = (DeleteInvitationsRequest <<< customize) { "AccountIds": Nothing }



newtype DeleteInvitationsResponse = DeleteInvitationsResponse 
  { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts)
  }
derive instance newtypeDeleteInvitationsResponse :: Newtype DeleteInvitationsResponse _
derive instance repGenericDeleteInvitationsResponse :: Generic DeleteInvitationsResponse _
instance showDeleteInvitationsResponse :: Show DeleteInvitationsResponse where show = genericShow
instance decodeDeleteInvitationsResponse :: Decode DeleteInvitationsResponse where decode = genericDecode options
instance encodeDeleteInvitationsResponse :: Encode DeleteInvitationsResponse where encode = genericEncode options

-- | Constructs DeleteInvitationsResponse from required parameters
newDeleteInvitationsResponse :: DeleteInvitationsResponse
newDeleteInvitationsResponse  = DeleteInvitationsResponse { "UnprocessedAccounts": Nothing }

-- | Constructs DeleteInvitationsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteInvitationsResponse' :: ( { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) } -> {"UnprocessedAccounts" :: Maybe (UnprocessedAccounts) } ) -> DeleteInvitationsResponse
newDeleteInvitationsResponse'  customize = (DeleteInvitationsResponse <<< customize) { "UnprocessedAccounts": Nothing }



-- | DeleteMembers request body.
newtype DeleteMembersRequest = DeleteMembersRequest 
  { "AccountIds" :: Maybe (AccountIds)
  , "DetectorId" :: (String)
  }
derive instance newtypeDeleteMembersRequest :: Newtype DeleteMembersRequest _
derive instance repGenericDeleteMembersRequest :: Generic DeleteMembersRequest _
instance showDeleteMembersRequest :: Show DeleteMembersRequest where show = genericShow
instance decodeDeleteMembersRequest :: Decode DeleteMembersRequest where decode = genericDecode options
instance encodeDeleteMembersRequest :: Encode DeleteMembersRequest where encode = genericEncode options

-- | Constructs DeleteMembersRequest from required parameters
newDeleteMembersRequest :: String -> DeleteMembersRequest
newDeleteMembersRequest _DetectorId = DeleteMembersRequest { "DetectorId": _DetectorId, "AccountIds": Nothing }

-- | Constructs DeleteMembersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteMembersRequest' :: String -> ( { "AccountIds" :: Maybe (AccountIds) , "DetectorId" :: (String) } -> {"AccountIds" :: Maybe (AccountIds) , "DetectorId" :: (String) } ) -> DeleteMembersRequest
newDeleteMembersRequest' _DetectorId customize = (DeleteMembersRequest <<< customize) { "DetectorId": _DetectorId, "AccountIds": Nothing }



newtype DeleteMembersResponse = DeleteMembersResponse 
  { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts)
  }
derive instance newtypeDeleteMembersResponse :: Newtype DeleteMembersResponse _
derive instance repGenericDeleteMembersResponse :: Generic DeleteMembersResponse _
instance showDeleteMembersResponse :: Show DeleteMembersResponse where show = genericShow
instance decodeDeleteMembersResponse :: Decode DeleteMembersResponse where decode = genericDecode options
instance encodeDeleteMembersResponse :: Encode DeleteMembersResponse where encode = genericEncode options

-- | Constructs DeleteMembersResponse from required parameters
newDeleteMembersResponse :: DeleteMembersResponse
newDeleteMembersResponse  = DeleteMembersResponse { "UnprocessedAccounts": Nothing }

-- | Constructs DeleteMembersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteMembersResponse' :: ( { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) } -> {"UnprocessedAccounts" :: Maybe (UnprocessedAccounts) } ) -> DeleteMembersResponse
newDeleteMembersResponse'  customize = (DeleteMembersResponse <<< customize) { "UnprocessedAccounts": Nothing }



newtype DeleteThreatIntelSetRequest = DeleteThreatIntelSetRequest 
  { "DetectorId" :: (String)
  , "ThreatIntelSetId" :: (String)
  }
derive instance newtypeDeleteThreatIntelSetRequest :: Newtype DeleteThreatIntelSetRequest _
derive instance repGenericDeleteThreatIntelSetRequest :: Generic DeleteThreatIntelSetRequest _
instance showDeleteThreatIntelSetRequest :: Show DeleteThreatIntelSetRequest where show = genericShow
instance decodeDeleteThreatIntelSetRequest :: Decode DeleteThreatIntelSetRequest where decode = genericDecode options
instance encodeDeleteThreatIntelSetRequest :: Encode DeleteThreatIntelSetRequest where encode = genericEncode options

-- | Constructs DeleteThreatIntelSetRequest from required parameters
newDeleteThreatIntelSetRequest :: String -> String -> DeleteThreatIntelSetRequest
newDeleteThreatIntelSetRequest _DetectorId _ThreatIntelSetId = DeleteThreatIntelSetRequest { "DetectorId": _DetectorId, "ThreatIntelSetId": _ThreatIntelSetId }

-- | Constructs DeleteThreatIntelSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteThreatIntelSetRequest' :: String -> String -> ( { "DetectorId" :: (String) , "ThreatIntelSetId" :: (String) } -> {"DetectorId" :: (String) , "ThreatIntelSetId" :: (String) } ) -> DeleteThreatIntelSetRequest
newDeleteThreatIntelSetRequest' _DetectorId _ThreatIntelSetId customize = (DeleteThreatIntelSetRequest <<< customize) { "DetectorId": _DetectorId, "ThreatIntelSetId": _ThreatIntelSetId }



newtype DeleteThreatIntelSetResponse = DeleteThreatIntelSetResponse Types.NoArguments
derive instance newtypeDeleteThreatIntelSetResponse :: Newtype DeleteThreatIntelSetResponse _
derive instance repGenericDeleteThreatIntelSetResponse :: Generic DeleteThreatIntelSetResponse _
instance showDeleteThreatIntelSetResponse :: Show DeleteThreatIntelSetResponse where show = genericShow
instance decodeDeleteThreatIntelSetResponse :: Decode DeleteThreatIntelSetResponse where decode = genericDecode options
instance encodeDeleteThreatIntelSetResponse :: Encode DeleteThreatIntelSetResponse where encode = genericEncode options



-- | The unique identifier for a detector.
newtype DetectorId = DetectorId String
derive instance newtypeDetectorId :: Newtype DetectorId _
derive instance repGenericDetectorId :: Generic DetectorId _
instance showDetectorId :: Show DetectorId where show = genericShow
instance decodeDetectorId :: Decode DetectorId where decode = genericDecode options
instance encodeDetectorId :: Encode DetectorId where encode = genericEncode options



-- | A list of detector Ids.
newtype DetectorIds = DetectorIds (Array DetectorId)
derive instance newtypeDetectorIds :: Newtype DetectorIds _
derive instance repGenericDetectorIds :: Generic DetectorIds _
instance showDetectorIds :: Show DetectorIds where show = genericShow
instance decodeDetectorIds :: Decode DetectorIds where decode = genericDecode options
instance encodeDetectorIds :: Encode DetectorIds where encode = genericEncode options



-- | The status of detector.
newtype DetectorStatus = DetectorStatus String
derive instance newtypeDetectorStatus :: Newtype DetectorStatus _
derive instance repGenericDetectorStatus :: Generic DetectorStatus _
instance showDetectorStatus :: Show DetectorStatus where show = genericShow
instance decodeDetectorStatus :: Decode DetectorStatus where decode = genericDecode options
instance encodeDetectorStatus :: Encode DetectorStatus where encode = genericEncode options



newtype DisassociateFromMasterAccountRequest = DisassociateFromMasterAccountRequest 
  { "DetectorId" :: (String)
  }
derive instance newtypeDisassociateFromMasterAccountRequest :: Newtype DisassociateFromMasterAccountRequest _
derive instance repGenericDisassociateFromMasterAccountRequest :: Generic DisassociateFromMasterAccountRequest _
instance showDisassociateFromMasterAccountRequest :: Show DisassociateFromMasterAccountRequest where show = genericShow
instance decodeDisassociateFromMasterAccountRequest :: Decode DisassociateFromMasterAccountRequest where decode = genericDecode options
instance encodeDisassociateFromMasterAccountRequest :: Encode DisassociateFromMasterAccountRequest where encode = genericEncode options

-- | Constructs DisassociateFromMasterAccountRequest from required parameters
newDisassociateFromMasterAccountRequest :: String -> DisassociateFromMasterAccountRequest
newDisassociateFromMasterAccountRequest _DetectorId = DisassociateFromMasterAccountRequest { "DetectorId": _DetectorId }

-- | Constructs DisassociateFromMasterAccountRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisassociateFromMasterAccountRequest' :: String -> ( { "DetectorId" :: (String) } -> {"DetectorId" :: (String) } ) -> DisassociateFromMasterAccountRequest
newDisassociateFromMasterAccountRequest' _DetectorId customize = (DisassociateFromMasterAccountRequest <<< customize) { "DetectorId": _DetectorId }



newtype DisassociateFromMasterAccountResponse = DisassociateFromMasterAccountResponse Types.NoArguments
derive instance newtypeDisassociateFromMasterAccountResponse :: Newtype DisassociateFromMasterAccountResponse _
derive instance repGenericDisassociateFromMasterAccountResponse :: Generic DisassociateFromMasterAccountResponse _
instance showDisassociateFromMasterAccountResponse :: Show DisassociateFromMasterAccountResponse where show = genericShow
instance decodeDisassociateFromMasterAccountResponse :: Decode DisassociateFromMasterAccountResponse where decode = genericDecode options
instance encodeDisassociateFromMasterAccountResponse :: Encode DisassociateFromMasterAccountResponse where encode = genericEncode options



-- | DisassociateMembers request body.
newtype DisassociateMembersRequest = DisassociateMembersRequest 
  { "AccountIds" :: Maybe (AccountIds)
  , "DetectorId" :: (String)
  }
derive instance newtypeDisassociateMembersRequest :: Newtype DisassociateMembersRequest _
derive instance repGenericDisassociateMembersRequest :: Generic DisassociateMembersRequest _
instance showDisassociateMembersRequest :: Show DisassociateMembersRequest where show = genericShow
instance decodeDisassociateMembersRequest :: Decode DisassociateMembersRequest where decode = genericDecode options
instance encodeDisassociateMembersRequest :: Encode DisassociateMembersRequest where encode = genericEncode options

-- | Constructs DisassociateMembersRequest from required parameters
newDisassociateMembersRequest :: String -> DisassociateMembersRequest
newDisassociateMembersRequest _DetectorId = DisassociateMembersRequest { "DetectorId": _DetectorId, "AccountIds": Nothing }

-- | Constructs DisassociateMembersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisassociateMembersRequest' :: String -> ( { "AccountIds" :: Maybe (AccountIds) , "DetectorId" :: (String) } -> {"AccountIds" :: Maybe (AccountIds) , "DetectorId" :: (String) } ) -> DisassociateMembersRequest
newDisassociateMembersRequest' _DetectorId customize = (DisassociateMembersRequest <<< customize) { "DetectorId": _DetectorId, "AccountIds": Nothing }



newtype DisassociateMembersResponse = DisassociateMembersResponse 
  { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts)
  }
derive instance newtypeDisassociateMembersResponse :: Newtype DisassociateMembersResponse _
derive instance repGenericDisassociateMembersResponse :: Generic DisassociateMembersResponse _
instance showDisassociateMembersResponse :: Show DisassociateMembersResponse where show = genericShow
instance decodeDisassociateMembersResponse :: Decode DisassociateMembersResponse where decode = genericDecode options
instance encodeDisassociateMembersResponse :: Encode DisassociateMembersResponse where encode = genericEncode options

-- | Constructs DisassociateMembersResponse from required parameters
newDisassociateMembersResponse :: DisassociateMembersResponse
newDisassociateMembersResponse  = DisassociateMembersResponse { "UnprocessedAccounts": Nothing }

-- | Constructs DisassociateMembersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisassociateMembersResponse' :: ( { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) } -> {"UnprocessedAccounts" :: Maybe (UnprocessedAccounts) } ) -> DisassociateMembersResponse
newDisassociateMembersResponse'  customize = (DisassociateMembersResponse <<< customize) { "UnprocessedAccounts": Nothing }



-- | Information about the DNS_REQUEST action described in this finding.
newtype DnsRequestAction = DnsRequestAction 
  { "Domain" :: Maybe (Domain)
  }
derive instance newtypeDnsRequestAction :: Newtype DnsRequestAction _
derive instance repGenericDnsRequestAction :: Generic DnsRequestAction _
instance showDnsRequestAction :: Show DnsRequestAction where show = genericShow
instance decodeDnsRequestAction :: Decode DnsRequestAction where decode = genericDecode options
instance encodeDnsRequestAction :: Encode DnsRequestAction where encode = genericEncode options

-- | Constructs DnsRequestAction from required parameters
newDnsRequestAction :: DnsRequestAction
newDnsRequestAction  = DnsRequestAction { "Domain": Nothing }

-- | Constructs DnsRequestAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDnsRequestAction' :: ( { "Domain" :: Maybe (Domain) } -> {"Domain" :: Maybe (Domain) } ) -> DnsRequestAction
newDnsRequestAction'  customize = (DnsRequestAction <<< customize) { "Domain": Nothing }



-- | A domain name.
newtype Domain = Domain String
derive instance newtypeDomain :: Newtype Domain _
derive instance repGenericDomain :: Generic Domain _
instance showDomain :: Show Domain where show = genericShow
instance decodeDomain :: Decode Domain where decode = genericDecode options
instance encodeDomain :: Encode Domain where encode = genericEncode options



-- | Domain information for the AWS API call.
newtype DomainDetails = DomainDetails Types.NoArguments
derive instance newtypeDomainDetails :: Newtype DomainDetails _
derive instance repGenericDomainDetails :: Generic DomainDetails _
instance showDomainDetails :: Show DomainDetails where show = genericShow
instance decodeDomainDetails :: Decode DomainDetails where decode = genericDecode options
instance encodeDomainDetails :: Encode DomainDetails where encode = genericEncode options



-- | Member account's email address.
newtype Email = Email String
derive instance newtypeEmail :: Newtype Email _
derive instance repGenericEmail :: Generic Email _
instance showEmail :: Show Email where show = genericShow
instance decodeEmail :: Decode Email where decode = genericDecode options
instance encodeEmail :: Encode Email where encode = genericEncode options



-- | A boolean value that specifies whether the detector is to be enabled.
newtype Enable = Enable Boolean
derive instance newtypeEnable :: Newtype Enable _
derive instance repGenericEnable :: Generic Enable _
instance showEnable :: Show Enable where show = genericShow
instance decodeEnable :: Decode Enable where decode = genericDecode options
instance encodeEnable :: Encode Enable where encode = genericEncode options



-- | Represents the equal condition to be applied to a single field when querying for findings.
newtype Eq = Eq (Array String)
derive instance newtypeEq :: Newtype Eq _
derive instance repGenericEq :: Generic Eq _
instance showEq :: Show Eq where show = genericShow
instance decodeEq :: Decode Eq where decode = genericDecode options
instance encodeEq :: Encode Eq where encode = genericEncode options



-- | Error response object.
newtype ErrorResponse = ErrorResponse 
  { "Message" :: Maybe (String)
  , "Type" :: Maybe (String)
  }
derive instance newtypeErrorResponse :: Newtype ErrorResponse _
derive instance repGenericErrorResponse :: Generic ErrorResponse _
instance showErrorResponse :: Show ErrorResponse where show = genericShow
instance decodeErrorResponse :: Decode ErrorResponse where decode = genericDecode options
instance encodeErrorResponse :: Encode ErrorResponse where encode = genericEncode options

-- | Constructs ErrorResponse from required parameters
newErrorResponse :: ErrorResponse
newErrorResponse  = ErrorResponse { "Message": Nothing, "Type": Nothing }

-- | Constructs ErrorResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newErrorResponse' :: ( { "Message" :: Maybe (String) , "Type" :: Maybe (String) } -> {"Message" :: Maybe (String) , "Type" :: Maybe (String) } ) -> ErrorResponse
newErrorResponse'  customize = (ErrorResponse <<< customize) { "Message": Nothing, "Type": Nothing }



-- | Finding Feedback Value
newtype Feedback = Feedback String
derive instance newtypeFeedback :: Newtype Feedback _
derive instance repGenericFeedback :: Generic Feedback _
instance showFeedback :: Show Feedback where show = genericShow
instance decodeFeedback :: Decode Feedback where decode = genericDecode options
instance encodeFeedback :: Encode Feedback where encode = genericEncode options



-- | Representation of a abnormal or suspicious activity.
newtype Finding = Finding 
  { "AccountId" :: Maybe (String)
  , "Arn" :: Maybe (String)
  , "Confidence" :: Maybe (Number)
  , "CreatedAt" :: Maybe (CreatedAt)
  , "Description" :: Maybe (String)
  , "Id" :: Maybe (String)
  , "Partition" :: Maybe (String)
  , "Region" :: Maybe (String)
  , "Resource" :: Maybe (Resource)
  , "SchemaVersion" :: Maybe (String)
  , "Service" :: Maybe (Service)
  , "Severity" :: Maybe (Number)
  , "Title" :: Maybe (String)
  , "Type" :: Maybe (String)
  , "UpdatedAt" :: Maybe (UpdatedAt)
  }
derive instance newtypeFinding :: Newtype Finding _
derive instance repGenericFinding :: Generic Finding _
instance showFinding :: Show Finding where show = genericShow
instance decodeFinding :: Decode Finding where decode = genericDecode options
instance encodeFinding :: Encode Finding where encode = genericEncode options

-- | Constructs Finding from required parameters
newFinding :: Finding
newFinding  = Finding { "AccountId": Nothing, "Arn": Nothing, "Confidence": Nothing, "CreatedAt": Nothing, "Description": Nothing, "Id": Nothing, "Partition": Nothing, "Region": Nothing, "Resource": Nothing, "SchemaVersion": Nothing, "Service": Nothing, "Severity": Nothing, "Title": Nothing, "Type": Nothing, "UpdatedAt": Nothing }

-- | Constructs Finding's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFinding' :: ( { "AccountId" :: Maybe (String) , "Arn" :: Maybe (String) , "Confidence" :: Maybe (Number) , "CreatedAt" :: Maybe (CreatedAt) , "Description" :: Maybe (String) , "Id" :: Maybe (String) , "Partition" :: Maybe (String) , "Region" :: Maybe (String) , "Resource" :: Maybe (Resource) , "SchemaVersion" :: Maybe (String) , "Service" :: Maybe (Service) , "Severity" :: Maybe (Number) , "Title" :: Maybe (String) , "Type" :: Maybe (String) , "UpdatedAt" :: Maybe (UpdatedAt) } -> {"AccountId" :: Maybe (String) , "Arn" :: Maybe (String) , "Confidence" :: Maybe (Number) , "CreatedAt" :: Maybe (CreatedAt) , "Description" :: Maybe (String) , "Id" :: Maybe (String) , "Partition" :: Maybe (String) , "Region" :: Maybe (String) , "Resource" :: Maybe (Resource) , "SchemaVersion" :: Maybe (String) , "Service" :: Maybe (Service) , "Severity" :: Maybe (Number) , "Title" :: Maybe (String) , "Type" :: Maybe (String) , "UpdatedAt" :: Maybe (UpdatedAt) } ) -> Finding
newFinding'  customize = (Finding <<< customize) { "AccountId": Nothing, "Arn": Nothing, "Confidence": Nothing, "CreatedAt": Nothing, "Description": Nothing, "Id": Nothing, "Partition": Nothing, "Region": Nothing, "Resource": Nothing, "SchemaVersion": Nothing, "Service": Nothing, "Severity": Nothing, "Title": Nothing, "Type": Nothing, "UpdatedAt": Nothing }



-- | Represents the criteria used for querying findings.
newtype FindingCriteria = FindingCriteria 
  { "Criterion" :: Maybe (MapOfCondition)
  }
derive instance newtypeFindingCriteria :: Newtype FindingCriteria _
derive instance repGenericFindingCriteria :: Generic FindingCriteria _
instance showFindingCriteria :: Show FindingCriteria where show = genericShow
instance decodeFindingCriteria :: Decode FindingCriteria where decode = genericDecode options
instance encodeFindingCriteria :: Encode FindingCriteria where encode = genericEncode options

-- | Constructs FindingCriteria from required parameters
newFindingCriteria :: FindingCriteria
newFindingCriteria  = FindingCriteria { "Criterion": Nothing }

-- | Constructs FindingCriteria's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFindingCriteria' :: ( { "Criterion" :: Maybe (MapOfCondition) } -> {"Criterion" :: Maybe (MapOfCondition) } ) -> FindingCriteria
newFindingCriteria'  customize = (FindingCriteria <<< customize) { "Criterion": Nothing }



-- | The unique identifier for the Finding
newtype FindingId = FindingId String
derive instance newtypeFindingId :: Newtype FindingId _
derive instance repGenericFindingId :: Generic FindingId _
instance showFindingId :: Show FindingId where show = genericShow
instance decodeFindingId :: Decode FindingId where decode = genericDecode options
instance encodeFindingId :: Encode FindingId where encode = genericEncode options



-- | The list of the Findings.
newtype FindingIds = FindingIds (Array FindingId)
derive instance newtypeFindingIds :: Newtype FindingIds _
derive instance repGenericFindingIds :: Generic FindingIds _
instance showFindingIds :: Show FindingIds where show = genericShow
instance decodeFindingIds :: Decode FindingIds where decode = genericDecode options
instance encodeFindingIds :: Encode FindingIds where encode = genericEncode options



-- | The types of finding statistics.
newtype FindingStatisticType = FindingStatisticType String
derive instance newtypeFindingStatisticType :: Newtype FindingStatisticType _
derive instance repGenericFindingStatisticType :: Generic FindingStatisticType _
instance showFindingStatisticType :: Show FindingStatisticType where show = genericShow
instance decodeFindingStatisticType :: Decode FindingStatisticType where decode = genericDecode options
instance encodeFindingStatisticType :: Encode FindingStatisticType where encode = genericEncode options



-- | The list of the finding statistics.
newtype FindingStatisticTypes = FindingStatisticTypes (Array FindingStatisticType)
derive instance newtypeFindingStatisticTypes :: Newtype FindingStatisticTypes _
derive instance repGenericFindingStatisticTypes :: Generic FindingStatisticTypes _
instance showFindingStatisticTypes :: Show FindingStatisticTypes where show = genericShow
instance decodeFindingStatisticTypes :: Decode FindingStatisticTypes where decode = genericDecode options
instance encodeFindingStatisticTypes :: Encode FindingStatisticTypes where encode = genericEncode options



-- | Finding statistics object.
newtype FindingStatistics = FindingStatistics 
  { "CountBySeverity" :: Maybe (MapOfCountBySeverityFindingStatistic)
  }
derive instance newtypeFindingStatistics :: Newtype FindingStatistics _
derive instance repGenericFindingStatistics :: Generic FindingStatistics _
instance showFindingStatistics :: Show FindingStatistics where show = genericShow
instance decodeFindingStatistics :: Decode FindingStatistics where decode = genericDecode options
instance encodeFindingStatistics :: Encode FindingStatistics where encode = genericEncode options

-- | Constructs FindingStatistics from required parameters
newFindingStatistics :: FindingStatistics
newFindingStatistics  = FindingStatistics { "CountBySeverity": Nothing }

-- | Constructs FindingStatistics's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFindingStatistics' :: ( { "CountBySeverity" :: Maybe (MapOfCountBySeverityFindingStatistic) } -> {"CountBySeverity" :: Maybe (MapOfCountBySeverityFindingStatistic) } ) -> FindingStatistics
newFindingStatistics'  customize = (FindingStatistics <<< customize) { "CountBySeverity": Nothing }



-- | The finding type for the finding
newtype FindingType = FindingType String
derive instance newtypeFindingType :: Newtype FindingType _
derive instance repGenericFindingType :: Generic FindingType _
instance showFindingType :: Show FindingType where show = genericShow
instance decodeFindingType :: Decode FindingType where decode = genericDecode options
instance encodeFindingType :: Encode FindingType where encode = genericEncode options



-- | The list of the finding types.
newtype FindingTypes = FindingTypes (Array FindingType)
derive instance newtypeFindingTypes :: Newtype FindingTypes _
derive instance repGenericFindingTypes :: Generic FindingTypes _
instance showFindingTypes :: Show FindingTypes where show = genericShow
instance decodeFindingTypes :: Decode FindingTypes where decode = genericDecode options
instance encodeFindingTypes :: Encode FindingTypes where encode = genericEncode options



-- | A list of findings.
newtype Findings = Findings (Array Finding)
derive instance newtypeFindings :: Newtype Findings _
derive instance repGenericFindings :: Generic Findings _
instance showFindings :: Show Findings where show = genericShow
instance decodeFindings :: Decode Findings where decode = genericDecode options
instance encodeFindings :: Encode Findings where encode = genericEncode options



-- | Location information of the remote IP address.
newtype GeoLocation = GeoLocation 
  { "Lat" :: Maybe (Number)
  , "Lon" :: Maybe (Number)
  }
derive instance newtypeGeoLocation :: Newtype GeoLocation _
derive instance repGenericGeoLocation :: Generic GeoLocation _
instance showGeoLocation :: Show GeoLocation where show = genericShow
instance decodeGeoLocation :: Decode GeoLocation where decode = genericDecode options
instance encodeGeoLocation :: Encode GeoLocation where encode = genericEncode options

-- | Constructs GeoLocation from required parameters
newGeoLocation :: GeoLocation
newGeoLocation  = GeoLocation { "Lat": Nothing, "Lon": Nothing }

-- | Constructs GeoLocation's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGeoLocation' :: ( { "Lat" :: Maybe (Number) , "Lon" :: Maybe (Number) } -> {"Lat" :: Maybe (Number) , "Lon" :: Maybe (Number) } ) -> GeoLocation
newGeoLocation'  customize = (GeoLocation <<< customize) { "Lat": Nothing, "Lon": Nothing }



newtype GetDetectorRequest = GetDetectorRequest 
  { "DetectorId" :: (String)
  }
derive instance newtypeGetDetectorRequest :: Newtype GetDetectorRequest _
derive instance repGenericGetDetectorRequest :: Generic GetDetectorRequest _
instance showGetDetectorRequest :: Show GetDetectorRequest where show = genericShow
instance decodeGetDetectorRequest :: Decode GetDetectorRequest where decode = genericDecode options
instance encodeGetDetectorRequest :: Encode GetDetectorRequest where encode = genericEncode options

-- | Constructs GetDetectorRequest from required parameters
newGetDetectorRequest :: String -> GetDetectorRequest
newGetDetectorRequest _DetectorId = GetDetectorRequest { "DetectorId": _DetectorId }

-- | Constructs GetDetectorRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetDetectorRequest' :: String -> ( { "DetectorId" :: (String) } -> {"DetectorId" :: (String) } ) -> GetDetectorRequest
newGetDetectorRequest' _DetectorId customize = (GetDetectorRequest <<< customize) { "DetectorId": _DetectorId }



newtype GetDetectorResponse = GetDetectorResponse 
  { "CreatedAt" :: Maybe (CreatedAt)
  , "ServiceRole" :: Maybe (ServiceRole)
  , "Status" :: Maybe (DetectorStatus)
  , "UpdatedAt" :: Maybe (UpdatedAt)
  }
derive instance newtypeGetDetectorResponse :: Newtype GetDetectorResponse _
derive instance repGenericGetDetectorResponse :: Generic GetDetectorResponse _
instance showGetDetectorResponse :: Show GetDetectorResponse where show = genericShow
instance decodeGetDetectorResponse :: Decode GetDetectorResponse where decode = genericDecode options
instance encodeGetDetectorResponse :: Encode GetDetectorResponse where encode = genericEncode options

-- | Constructs GetDetectorResponse from required parameters
newGetDetectorResponse :: GetDetectorResponse
newGetDetectorResponse  = GetDetectorResponse { "CreatedAt": Nothing, "ServiceRole": Nothing, "Status": Nothing, "UpdatedAt": Nothing }

-- | Constructs GetDetectorResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetDetectorResponse' :: ( { "CreatedAt" :: Maybe (CreatedAt) , "ServiceRole" :: Maybe (ServiceRole) , "Status" :: Maybe (DetectorStatus) , "UpdatedAt" :: Maybe (UpdatedAt) } -> {"CreatedAt" :: Maybe (CreatedAt) , "ServiceRole" :: Maybe (ServiceRole) , "Status" :: Maybe (DetectorStatus) , "UpdatedAt" :: Maybe (UpdatedAt) } ) -> GetDetectorResponse
newGetDetectorResponse'  customize = (GetDetectorResponse <<< customize) { "CreatedAt": Nothing, "ServiceRole": Nothing, "Status": Nothing, "UpdatedAt": Nothing }



-- | GetFindings request body.
newtype GetFindingsRequest = GetFindingsRequest 
  { "DetectorId" :: (String)
  , "FindingIds" :: Maybe (FindingIds)
  , "SortCriteria" :: Maybe (SortCriteria)
  }
derive instance newtypeGetFindingsRequest :: Newtype GetFindingsRequest _
derive instance repGenericGetFindingsRequest :: Generic GetFindingsRequest _
instance showGetFindingsRequest :: Show GetFindingsRequest where show = genericShow
instance decodeGetFindingsRequest :: Decode GetFindingsRequest where decode = genericDecode options
instance encodeGetFindingsRequest :: Encode GetFindingsRequest where encode = genericEncode options

-- | Constructs GetFindingsRequest from required parameters
newGetFindingsRequest :: String -> GetFindingsRequest
newGetFindingsRequest _DetectorId = GetFindingsRequest { "DetectorId": _DetectorId, "FindingIds": Nothing, "SortCriteria": Nothing }

-- | Constructs GetFindingsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetFindingsRequest' :: String -> ( { "DetectorId" :: (String) , "FindingIds" :: Maybe (FindingIds) , "SortCriteria" :: Maybe (SortCriteria) } -> {"DetectorId" :: (String) , "FindingIds" :: Maybe (FindingIds) , "SortCriteria" :: Maybe (SortCriteria) } ) -> GetFindingsRequest
newGetFindingsRequest' _DetectorId customize = (GetFindingsRequest <<< customize) { "DetectorId": _DetectorId, "FindingIds": Nothing, "SortCriteria": Nothing }



newtype GetFindingsResponse = GetFindingsResponse 
  { "Findings" :: Maybe (Findings)
  }
derive instance newtypeGetFindingsResponse :: Newtype GetFindingsResponse _
derive instance repGenericGetFindingsResponse :: Generic GetFindingsResponse _
instance showGetFindingsResponse :: Show GetFindingsResponse where show = genericShow
instance decodeGetFindingsResponse :: Decode GetFindingsResponse where decode = genericDecode options
instance encodeGetFindingsResponse :: Encode GetFindingsResponse where encode = genericEncode options

-- | Constructs GetFindingsResponse from required parameters
newGetFindingsResponse :: GetFindingsResponse
newGetFindingsResponse  = GetFindingsResponse { "Findings": Nothing }

-- | Constructs GetFindingsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetFindingsResponse' :: ( { "Findings" :: Maybe (Findings) } -> {"Findings" :: Maybe (Findings) } ) -> GetFindingsResponse
newGetFindingsResponse'  customize = (GetFindingsResponse <<< customize) { "Findings": Nothing }



-- | GetFindingsStatistics request body.
newtype GetFindingsStatisticsRequest = GetFindingsStatisticsRequest 
  { "DetectorId" :: (String)
  , "FindingCriteria" :: Maybe (FindingCriteria)
  , "FindingStatisticTypes" :: Maybe (FindingStatisticTypes)
  }
derive instance newtypeGetFindingsStatisticsRequest :: Newtype GetFindingsStatisticsRequest _
derive instance repGenericGetFindingsStatisticsRequest :: Generic GetFindingsStatisticsRequest _
instance showGetFindingsStatisticsRequest :: Show GetFindingsStatisticsRequest where show = genericShow
instance decodeGetFindingsStatisticsRequest :: Decode GetFindingsStatisticsRequest where decode = genericDecode options
instance encodeGetFindingsStatisticsRequest :: Encode GetFindingsStatisticsRequest where encode = genericEncode options

-- | Constructs GetFindingsStatisticsRequest from required parameters
newGetFindingsStatisticsRequest :: String -> GetFindingsStatisticsRequest
newGetFindingsStatisticsRequest _DetectorId = GetFindingsStatisticsRequest { "DetectorId": _DetectorId, "FindingCriteria": Nothing, "FindingStatisticTypes": Nothing }

-- | Constructs GetFindingsStatisticsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetFindingsStatisticsRequest' :: String -> ( { "DetectorId" :: (String) , "FindingCriteria" :: Maybe (FindingCriteria) , "FindingStatisticTypes" :: Maybe (FindingStatisticTypes) } -> {"DetectorId" :: (String) , "FindingCriteria" :: Maybe (FindingCriteria) , "FindingStatisticTypes" :: Maybe (FindingStatisticTypes) } ) -> GetFindingsStatisticsRequest
newGetFindingsStatisticsRequest' _DetectorId customize = (GetFindingsStatisticsRequest <<< customize) { "DetectorId": _DetectorId, "FindingCriteria": Nothing, "FindingStatisticTypes": Nothing }



newtype GetFindingsStatisticsResponse = GetFindingsStatisticsResponse 
  { "FindingStatistics" :: Maybe (FindingStatistics)
  }
derive instance newtypeGetFindingsStatisticsResponse :: Newtype GetFindingsStatisticsResponse _
derive instance repGenericGetFindingsStatisticsResponse :: Generic GetFindingsStatisticsResponse _
instance showGetFindingsStatisticsResponse :: Show GetFindingsStatisticsResponse where show = genericShow
instance decodeGetFindingsStatisticsResponse :: Decode GetFindingsStatisticsResponse where decode = genericDecode options
instance encodeGetFindingsStatisticsResponse :: Encode GetFindingsStatisticsResponse where encode = genericEncode options

-- | Constructs GetFindingsStatisticsResponse from required parameters
newGetFindingsStatisticsResponse :: GetFindingsStatisticsResponse
newGetFindingsStatisticsResponse  = GetFindingsStatisticsResponse { "FindingStatistics": Nothing }

-- | Constructs GetFindingsStatisticsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetFindingsStatisticsResponse' :: ( { "FindingStatistics" :: Maybe (FindingStatistics) } -> {"FindingStatistics" :: Maybe (FindingStatistics) } ) -> GetFindingsStatisticsResponse
newGetFindingsStatisticsResponse'  customize = (GetFindingsStatisticsResponse <<< customize) { "FindingStatistics": Nothing }



newtype GetIPSetRequest = GetIPSetRequest 
  { "DetectorId" :: (String)
  , "IpSetId" :: (String)
  }
derive instance newtypeGetIPSetRequest :: Newtype GetIPSetRequest _
derive instance repGenericGetIPSetRequest :: Generic GetIPSetRequest _
instance showGetIPSetRequest :: Show GetIPSetRequest where show = genericShow
instance decodeGetIPSetRequest :: Decode GetIPSetRequest where decode = genericDecode options
instance encodeGetIPSetRequest :: Encode GetIPSetRequest where encode = genericEncode options

-- | Constructs GetIPSetRequest from required parameters
newGetIPSetRequest :: String -> String -> GetIPSetRequest
newGetIPSetRequest _DetectorId _IpSetId = GetIPSetRequest { "DetectorId": _DetectorId, "IpSetId": _IpSetId }

-- | Constructs GetIPSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetIPSetRequest' :: String -> String -> ( { "DetectorId" :: (String) , "IpSetId" :: (String) } -> {"DetectorId" :: (String) , "IpSetId" :: (String) } ) -> GetIPSetRequest
newGetIPSetRequest' _DetectorId _IpSetId customize = (GetIPSetRequest <<< customize) { "DetectorId": _DetectorId, "IpSetId": _IpSetId }



newtype GetIPSetResponse = GetIPSetResponse 
  { "Format" :: Maybe (IpSetFormat)
  , "Location" :: Maybe (Location)
  , "Name" :: Maybe (Name)
  , "Status" :: Maybe (IpSetStatus)
  }
derive instance newtypeGetIPSetResponse :: Newtype GetIPSetResponse _
derive instance repGenericGetIPSetResponse :: Generic GetIPSetResponse _
instance showGetIPSetResponse :: Show GetIPSetResponse where show = genericShow
instance decodeGetIPSetResponse :: Decode GetIPSetResponse where decode = genericDecode options
instance encodeGetIPSetResponse :: Encode GetIPSetResponse where encode = genericEncode options

-- | Constructs GetIPSetResponse from required parameters
newGetIPSetResponse :: GetIPSetResponse
newGetIPSetResponse  = GetIPSetResponse { "Format": Nothing, "Location": Nothing, "Name": Nothing, "Status": Nothing }

-- | Constructs GetIPSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetIPSetResponse' :: ( { "Format" :: Maybe (IpSetFormat) , "Location" :: Maybe (Location) , "Name" :: Maybe (Name) , "Status" :: Maybe (IpSetStatus) } -> {"Format" :: Maybe (IpSetFormat) , "Location" :: Maybe (Location) , "Name" :: Maybe (Name) , "Status" :: Maybe (IpSetStatus) } ) -> GetIPSetResponse
newGetIPSetResponse'  customize = (GetIPSetResponse <<< customize) { "Format": Nothing, "Location": Nothing, "Name": Nothing, "Status": Nothing }



newtype GetInvitationsCountRequest = GetInvitationsCountRequest Types.NoArguments
derive instance newtypeGetInvitationsCountRequest :: Newtype GetInvitationsCountRequest _
derive instance repGenericGetInvitationsCountRequest :: Generic GetInvitationsCountRequest _
instance showGetInvitationsCountRequest :: Show GetInvitationsCountRequest where show = genericShow
instance decodeGetInvitationsCountRequest :: Decode GetInvitationsCountRequest where decode = genericDecode options
instance encodeGetInvitationsCountRequest :: Encode GetInvitationsCountRequest where encode = genericEncode options



newtype GetInvitationsCountResponse = GetInvitationsCountResponse 
  { "InvitationsCount" :: Maybe (Int)
  }
derive instance newtypeGetInvitationsCountResponse :: Newtype GetInvitationsCountResponse _
derive instance repGenericGetInvitationsCountResponse :: Generic GetInvitationsCountResponse _
instance showGetInvitationsCountResponse :: Show GetInvitationsCountResponse where show = genericShow
instance decodeGetInvitationsCountResponse :: Decode GetInvitationsCountResponse where decode = genericDecode options
instance encodeGetInvitationsCountResponse :: Encode GetInvitationsCountResponse where encode = genericEncode options

-- | Constructs GetInvitationsCountResponse from required parameters
newGetInvitationsCountResponse :: GetInvitationsCountResponse
newGetInvitationsCountResponse  = GetInvitationsCountResponse { "InvitationsCount": Nothing }

-- | Constructs GetInvitationsCountResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetInvitationsCountResponse' :: ( { "InvitationsCount" :: Maybe (Int) } -> {"InvitationsCount" :: Maybe (Int) } ) -> GetInvitationsCountResponse
newGetInvitationsCountResponse'  customize = (GetInvitationsCountResponse <<< customize) { "InvitationsCount": Nothing }



newtype GetMasterAccountRequest = GetMasterAccountRequest 
  { "DetectorId" :: (String)
  }
derive instance newtypeGetMasterAccountRequest :: Newtype GetMasterAccountRequest _
derive instance repGenericGetMasterAccountRequest :: Generic GetMasterAccountRequest _
instance showGetMasterAccountRequest :: Show GetMasterAccountRequest where show = genericShow
instance decodeGetMasterAccountRequest :: Decode GetMasterAccountRequest where decode = genericDecode options
instance encodeGetMasterAccountRequest :: Encode GetMasterAccountRequest where encode = genericEncode options

-- | Constructs GetMasterAccountRequest from required parameters
newGetMasterAccountRequest :: String -> GetMasterAccountRequest
newGetMasterAccountRequest _DetectorId = GetMasterAccountRequest { "DetectorId": _DetectorId }

-- | Constructs GetMasterAccountRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetMasterAccountRequest' :: String -> ( { "DetectorId" :: (String) } -> {"DetectorId" :: (String) } ) -> GetMasterAccountRequest
newGetMasterAccountRequest' _DetectorId customize = (GetMasterAccountRequest <<< customize) { "DetectorId": _DetectorId }



newtype GetMasterAccountResponse = GetMasterAccountResponse 
  { "Master" :: Maybe (Master)
  }
derive instance newtypeGetMasterAccountResponse :: Newtype GetMasterAccountResponse _
derive instance repGenericGetMasterAccountResponse :: Generic GetMasterAccountResponse _
instance showGetMasterAccountResponse :: Show GetMasterAccountResponse where show = genericShow
instance decodeGetMasterAccountResponse :: Decode GetMasterAccountResponse where decode = genericDecode options
instance encodeGetMasterAccountResponse :: Encode GetMasterAccountResponse where encode = genericEncode options

-- | Constructs GetMasterAccountResponse from required parameters
newGetMasterAccountResponse :: GetMasterAccountResponse
newGetMasterAccountResponse  = GetMasterAccountResponse { "Master": Nothing }

-- | Constructs GetMasterAccountResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetMasterAccountResponse' :: ( { "Master" :: Maybe (Master) } -> {"Master" :: Maybe (Master) } ) -> GetMasterAccountResponse
newGetMasterAccountResponse'  customize = (GetMasterAccountResponse <<< customize) { "Master": Nothing }



-- | GetMembers request body.
newtype GetMembersRequest = GetMembersRequest 
  { "AccountIds" :: Maybe (AccountIds)
  , "DetectorId" :: (String)
  }
derive instance newtypeGetMembersRequest :: Newtype GetMembersRequest _
derive instance repGenericGetMembersRequest :: Generic GetMembersRequest _
instance showGetMembersRequest :: Show GetMembersRequest where show = genericShow
instance decodeGetMembersRequest :: Decode GetMembersRequest where decode = genericDecode options
instance encodeGetMembersRequest :: Encode GetMembersRequest where encode = genericEncode options

-- | Constructs GetMembersRequest from required parameters
newGetMembersRequest :: String -> GetMembersRequest
newGetMembersRequest _DetectorId = GetMembersRequest { "DetectorId": _DetectorId, "AccountIds": Nothing }

-- | Constructs GetMembersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetMembersRequest' :: String -> ( { "AccountIds" :: Maybe (AccountIds) , "DetectorId" :: (String) } -> {"AccountIds" :: Maybe (AccountIds) , "DetectorId" :: (String) } ) -> GetMembersRequest
newGetMembersRequest' _DetectorId customize = (GetMembersRequest <<< customize) { "DetectorId": _DetectorId, "AccountIds": Nothing }



newtype GetMembersResponse = GetMembersResponse 
  { "Members" :: Maybe (Members)
  , "UnprocessedAccounts" :: Maybe (UnprocessedAccounts)
  }
derive instance newtypeGetMembersResponse :: Newtype GetMembersResponse _
derive instance repGenericGetMembersResponse :: Generic GetMembersResponse _
instance showGetMembersResponse :: Show GetMembersResponse where show = genericShow
instance decodeGetMembersResponse :: Decode GetMembersResponse where decode = genericDecode options
instance encodeGetMembersResponse :: Encode GetMembersResponse where encode = genericEncode options

-- | Constructs GetMembersResponse from required parameters
newGetMembersResponse :: GetMembersResponse
newGetMembersResponse  = GetMembersResponse { "Members": Nothing, "UnprocessedAccounts": Nothing }

-- | Constructs GetMembersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetMembersResponse' :: ( { "Members" :: Maybe (Members) , "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) } -> {"Members" :: Maybe (Members) , "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) } ) -> GetMembersResponse
newGetMembersResponse'  customize = (GetMembersResponse <<< customize) { "Members": Nothing, "UnprocessedAccounts": Nothing }



newtype GetThreatIntelSetRequest = GetThreatIntelSetRequest 
  { "DetectorId" :: (String)
  , "ThreatIntelSetId" :: (String)
  }
derive instance newtypeGetThreatIntelSetRequest :: Newtype GetThreatIntelSetRequest _
derive instance repGenericGetThreatIntelSetRequest :: Generic GetThreatIntelSetRequest _
instance showGetThreatIntelSetRequest :: Show GetThreatIntelSetRequest where show = genericShow
instance decodeGetThreatIntelSetRequest :: Decode GetThreatIntelSetRequest where decode = genericDecode options
instance encodeGetThreatIntelSetRequest :: Encode GetThreatIntelSetRequest where encode = genericEncode options

-- | Constructs GetThreatIntelSetRequest from required parameters
newGetThreatIntelSetRequest :: String -> String -> GetThreatIntelSetRequest
newGetThreatIntelSetRequest _DetectorId _ThreatIntelSetId = GetThreatIntelSetRequest { "DetectorId": _DetectorId, "ThreatIntelSetId": _ThreatIntelSetId }

-- | Constructs GetThreatIntelSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetThreatIntelSetRequest' :: String -> String -> ( { "DetectorId" :: (String) , "ThreatIntelSetId" :: (String) } -> {"DetectorId" :: (String) , "ThreatIntelSetId" :: (String) } ) -> GetThreatIntelSetRequest
newGetThreatIntelSetRequest' _DetectorId _ThreatIntelSetId customize = (GetThreatIntelSetRequest <<< customize) { "DetectorId": _DetectorId, "ThreatIntelSetId": _ThreatIntelSetId }



newtype GetThreatIntelSetResponse = GetThreatIntelSetResponse 
  { "Format" :: Maybe (ThreatIntelSetFormat)
  , "Location" :: Maybe (Location)
  , "Name" :: Maybe (Name)
  , "Status" :: Maybe (ThreatIntelSetStatus)
  }
derive instance newtypeGetThreatIntelSetResponse :: Newtype GetThreatIntelSetResponse _
derive instance repGenericGetThreatIntelSetResponse :: Generic GetThreatIntelSetResponse _
instance showGetThreatIntelSetResponse :: Show GetThreatIntelSetResponse where show = genericShow
instance decodeGetThreatIntelSetResponse :: Decode GetThreatIntelSetResponse where decode = genericDecode options
instance encodeGetThreatIntelSetResponse :: Encode GetThreatIntelSetResponse where encode = genericEncode options

-- | Constructs GetThreatIntelSetResponse from required parameters
newGetThreatIntelSetResponse :: GetThreatIntelSetResponse
newGetThreatIntelSetResponse  = GetThreatIntelSetResponse { "Format": Nothing, "Location": Nothing, "Name": Nothing, "Status": Nothing }

-- | Constructs GetThreatIntelSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetThreatIntelSetResponse' :: ( { "Format" :: Maybe (ThreatIntelSetFormat) , "Location" :: Maybe (Location) , "Name" :: Maybe (Name) , "Status" :: Maybe (ThreatIntelSetStatus) } -> {"Format" :: Maybe (ThreatIntelSetFormat) , "Location" :: Maybe (Location) , "Name" :: Maybe (Name) , "Status" :: Maybe (ThreatIntelSetStatus) } ) -> GetThreatIntelSetResponse
newGetThreatIntelSetResponse'  customize = (GetThreatIntelSetResponse <<< customize) { "Format": Nothing, "Location": Nothing, "Name": Nothing, "Status": Nothing }



-- | The profile information of the EC2 instance.
newtype IamInstanceProfile = IamInstanceProfile 
  { "Arn" :: Maybe (String)
  , "Id" :: Maybe (String)
  }
derive instance newtypeIamInstanceProfile :: Newtype IamInstanceProfile _
derive instance repGenericIamInstanceProfile :: Generic IamInstanceProfile _
instance showIamInstanceProfile :: Show IamInstanceProfile where show = genericShow
instance decodeIamInstanceProfile :: Decode IamInstanceProfile where decode = genericDecode options
instance encodeIamInstanceProfile :: Encode IamInstanceProfile where encode = genericEncode options

-- | Constructs IamInstanceProfile from required parameters
newIamInstanceProfile :: IamInstanceProfile
newIamInstanceProfile  = IamInstanceProfile { "Arn": Nothing, "Id": Nothing }

-- | Constructs IamInstanceProfile's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIamInstanceProfile' :: ( { "Arn" :: Maybe (String) , "Id" :: Maybe (String) } -> {"Arn" :: Maybe (String) , "Id" :: Maybe (String) } ) -> IamInstanceProfile
newIamInstanceProfile'  customize = (IamInstanceProfile <<< customize) { "Arn": Nothing, "Id": Nothing }



-- | The information about the EC2 instance associated with the activity that prompted GuardDuty to generate a finding.
newtype InstanceDetails = InstanceDetails 
  { "AvailabilityZone" :: Maybe (String)
  , "IamInstanceProfile" :: Maybe (IamInstanceProfile)
  , "ImageId" :: Maybe (String)
  , "InstanceId" :: Maybe (String)
  , "InstanceState" :: Maybe (String)
  , "InstanceType" :: Maybe (String)
  , "LaunchTime" :: Maybe (String)
  , "NetworkInterfaces" :: Maybe (NetworkInterfaces)
  , "Platform" :: Maybe (String)
  , "ProductCodes" :: Maybe (ProductCodes)
  , "Tags" :: Maybe (Tags)
  }
derive instance newtypeInstanceDetails :: Newtype InstanceDetails _
derive instance repGenericInstanceDetails :: Generic InstanceDetails _
instance showInstanceDetails :: Show InstanceDetails where show = genericShow
instance decodeInstanceDetails :: Decode InstanceDetails where decode = genericDecode options
instance encodeInstanceDetails :: Encode InstanceDetails where encode = genericEncode options

-- | Constructs InstanceDetails from required parameters
newInstanceDetails :: InstanceDetails
newInstanceDetails  = InstanceDetails { "AvailabilityZone": Nothing, "IamInstanceProfile": Nothing, "ImageId": Nothing, "InstanceId": Nothing, "InstanceState": Nothing, "InstanceType": Nothing, "LaunchTime": Nothing, "NetworkInterfaces": Nothing, "Platform": Nothing, "ProductCodes": Nothing, "Tags": Nothing }

-- | Constructs InstanceDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceDetails' :: ( { "AvailabilityZone" :: Maybe (String) , "IamInstanceProfile" :: Maybe (IamInstanceProfile) , "ImageId" :: Maybe (String) , "InstanceId" :: Maybe (String) , "InstanceState" :: Maybe (String) , "InstanceType" :: Maybe (String) , "LaunchTime" :: Maybe (String) , "NetworkInterfaces" :: Maybe (NetworkInterfaces) , "Platform" :: Maybe (String) , "ProductCodes" :: Maybe (ProductCodes) , "Tags" :: Maybe (Tags) } -> {"AvailabilityZone" :: Maybe (String) , "IamInstanceProfile" :: Maybe (IamInstanceProfile) , "ImageId" :: Maybe (String) , "InstanceId" :: Maybe (String) , "InstanceState" :: Maybe (String) , "InstanceType" :: Maybe (String) , "LaunchTime" :: Maybe (String) , "NetworkInterfaces" :: Maybe (NetworkInterfaces) , "Platform" :: Maybe (String) , "ProductCodes" :: Maybe (ProductCodes) , "Tags" :: Maybe (Tags) } ) -> InstanceDetails
newInstanceDetails'  customize = (InstanceDetails <<< customize) { "AvailabilityZone": Nothing, "IamInstanceProfile": Nothing, "ImageId": Nothing, "InstanceId": Nothing, "InstanceState": Nothing, "InstanceType": Nothing, "LaunchTime": Nothing, "NetworkInterfaces": Nothing, "Platform": Nothing, "ProductCodes": Nothing, "Tags": Nothing }



-- | Error response object.
newtype InternalServerErrorException = InternalServerErrorException 
  { "Message" :: Maybe (String)
  , "Type" :: Maybe (String)
  }
derive instance newtypeInternalServerErrorException :: Newtype InternalServerErrorException _
derive instance repGenericInternalServerErrorException :: Generic InternalServerErrorException _
instance showInternalServerErrorException :: Show InternalServerErrorException where show = genericShow
instance decodeInternalServerErrorException :: Decode InternalServerErrorException where decode = genericDecode options
instance encodeInternalServerErrorException :: Encode InternalServerErrorException where encode = genericEncode options

-- | Constructs InternalServerErrorException from required parameters
newInternalServerErrorException :: InternalServerErrorException
newInternalServerErrorException  = InternalServerErrorException { "Message": Nothing, "Type": Nothing }

-- | Constructs InternalServerErrorException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalServerErrorException' :: ( { "Message" :: Maybe (String) , "Type" :: Maybe (String) } -> {"Message" :: Maybe (String) , "Type" :: Maybe (String) } ) -> InternalServerErrorException
newInternalServerErrorException'  customize = (InternalServerErrorException <<< customize) { "Message": Nothing, "Type": Nothing }



-- | Invitation from an AWS account to become the current account's master.
newtype Invitation = Invitation 
  { "AccountId" :: Maybe (String)
  , "InvitationId" :: Maybe (InvitationId)
  , "InvitedAt" :: Maybe (InvitedAt)
  , "RelationshipStatus" :: Maybe (String)
  }
derive instance newtypeInvitation :: Newtype Invitation _
derive instance repGenericInvitation :: Generic Invitation _
instance showInvitation :: Show Invitation where show = genericShow
instance decodeInvitation :: Decode Invitation where decode = genericDecode options
instance encodeInvitation :: Encode Invitation where encode = genericEncode options

-- | Constructs Invitation from required parameters
newInvitation :: Invitation
newInvitation  = Invitation { "AccountId": Nothing, "InvitationId": Nothing, "InvitedAt": Nothing, "RelationshipStatus": Nothing }

-- | Constructs Invitation's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvitation' :: ( { "AccountId" :: Maybe (String) , "InvitationId" :: Maybe (InvitationId) , "InvitedAt" :: Maybe (InvitedAt) , "RelationshipStatus" :: Maybe (String) } -> {"AccountId" :: Maybe (String) , "InvitationId" :: Maybe (InvitationId) , "InvitedAt" :: Maybe (InvitedAt) , "RelationshipStatus" :: Maybe (String) } ) -> Invitation
newInvitation'  customize = (Invitation <<< customize) { "AccountId": Nothing, "InvitationId": Nothing, "InvitedAt": Nothing, "RelationshipStatus": Nothing }



-- | This value is used to validate the master account to the member account.
newtype InvitationId = InvitationId String
derive instance newtypeInvitationId :: Newtype InvitationId _
derive instance repGenericInvitationId :: Generic InvitationId _
instance showInvitationId :: Show InvitationId where show = genericShow
instance decodeInvitationId :: Decode InvitationId where decode = genericDecode options
instance encodeInvitationId :: Encode InvitationId where encode = genericEncode options



-- | A list of invitation descriptions.
newtype Invitations = Invitations (Array Invitation)
derive instance newtypeInvitations :: Newtype Invitations _
derive instance repGenericInvitations :: Generic Invitations _
instance showInvitations :: Show Invitations where show = genericShow
instance decodeInvitations :: Decode Invitations where decode = genericDecode options
instance encodeInvitations :: Encode Invitations where encode = genericEncode options



-- | InviteMembers request body.
newtype InviteMembersRequest = InviteMembersRequest 
  { "AccountIds" :: Maybe (AccountIds)
  , "DetectorId" :: (String)
  , "Message" :: Maybe (Message)
  }
derive instance newtypeInviteMembersRequest :: Newtype InviteMembersRequest _
derive instance repGenericInviteMembersRequest :: Generic InviteMembersRequest _
instance showInviteMembersRequest :: Show InviteMembersRequest where show = genericShow
instance decodeInviteMembersRequest :: Decode InviteMembersRequest where decode = genericDecode options
instance encodeInviteMembersRequest :: Encode InviteMembersRequest where encode = genericEncode options

-- | Constructs InviteMembersRequest from required parameters
newInviteMembersRequest :: String -> InviteMembersRequest
newInviteMembersRequest _DetectorId = InviteMembersRequest { "DetectorId": _DetectorId, "AccountIds": Nothing, "Message": Nothing }

-- | Constructs InviteMembersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInviteMembersRequest' :: String -> ( { "AccountIds" :: Maybe (AccountIds) , "DetectorId" :: (String) , "Message" :: Maybe (Message) } -> {"AccountIds" :: Maybe (AccountIds) , "DetectorId" :: (String) , "Message" :: Maybe (Message) } ) -> InviteMembersRequest
newInviteMembersRequest' _DetectorId customize = (InviteMembersRequest <<< customize) { "DetectorId": _DetectorId, "AccountIds": Nothing, "Message": Nothing }



newtype InviteMembersResponse = InviteMembersResponse 
  { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts)
  }
derive instance newtypeInviteMembersResponse :: Newtype InviteMembersResponse _
derive instance repGenericInviteMembersResponse :: Generic InviteMembersResponse _
instance showInviteMembersResponse :: Show InviteMembersResponse where show = genericShow
instance decodeInviteMembersResponse :: Decode InviteMembersResponse where decode = genericDecode options
instance encodeInviteMembersResponse :: Encode InviteMembersResponse where encode = genericEncode options

-- | Constructs InviteMembersResponse from required parameters
newInviteMembersResponse :: InviteMembersResponse
newInviteMembersResponse  = InviteMembersResponse { "UnprocessedAccounts": Nothing }

-- | Constructs InviteMembersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInviteMembersResponse' :: ( { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) } -> {"UnprocessedAccounts" :: Maybe (UnprocessedAccounts) } ) -> InviteMembersResponse
newInviteMembersResponse'  customize = (InviteMembersResponse <<< customize) { "UnprocessedAccounts": Nothing }



-- | Timestamp at which a member has been invited. The format will be ISO-8601.
newtype InvitedAt = InvitedAt String
derive instance newtypeInvitedAt :: Newtype InvitedAt _
derive instance repGenericInvitedAt :: Generic InvitedAt _
instance showInvitedAt :: Show InvitedAt where show = genericShow
instance decodeInvitedAt :: Decode InvitedAt where decode = genericDecode options
instance encodeInvitedAt :: Encode InvitedAt where encode = genericEncode options



-- | The format of the ipSet.
newtype IpSetFormat = IpSetFormat String
derive instance newtypeIpSetFormat :: Newtype IpSetFormat _
derive instance repGenericIpSetFormat :: Generic IpSetFormat _
instance showIpSetFormat :: Show IpSetFormat where show = genericShow
instance decodeIpSetFormat :: Decode IpSetFormat where decode = genericDecode options
instance encodeIpSetFormat :: Encode IpSetFormat where encode = genericEncode options



-- | The unique identifier for an IP Set
newtype IpSetId = IpSetId String
derive instance newtypeIpSetId :: Newtype IpSetId _
derive instance repGenericIpSetId :: Generic IpSetId _
instance showIpSetId :: Show IpSetId where show = genericShow
instance decodeIpSetId :: Decode IpSetId where decode = genericDecode options
instance encodeIpSetId :: Encode IpSetId where encode = genericEncode options



-- | A list of the IP set IDs
newtype IpSetIds = IpSetIds (Array IpSetId)
derive instance newtypeIpSetIds :: Newtype IpSetIds _
derive instance repGenericIpSetIds :: Generic IpSetIds _
instance showIpSetIds :: Show IpSetIds where show = genericShow
instance decodeIpSetIds :: Decode IpSetIds where decode = genericDecode options
instance encodeIpSetIds :: Encode IpSetIds where encode = genericEncode options



-- | The status of ipSet file uploaded.
newtype IpSetStatus = IpSetStatus String
derive instance newtypeIpSetStatus :: Newtype IpSetStatus _
derive instance repGenericIpSetStatus :: Generic IpSetStatus _
instance showIpSetStatus :: Show IpSetStatus where show = genericShow
instance decodeIpSetStatus :: Decode IpSetStatus where decode = genericDecode options
instance encodeIpSetStatus :: Encode IpSetStatus where encode = genericEncode options



-- | IpV6 address of the EC2 instance.
newtype Ipv6Address = Ipv6Address String
derive instance newtypeIpv6Address :: Newtype Ipv6Address _
derive instance repGenericIpv6Address :: Generic Ipv6Address _
instance showIpv6Address :: Show Ipv6Address where show = genericShow
instance decodeIpv6Address :: Decode Ipv6Address where decode = genericDecode options
instance encodeIpv6Address :: Encode Ipv6Address where encode = genericEncode options



-- | A list of EC2 instance IPv6 address information.
newtype Ipv6Addresses = Ipv6Addresses (Array Ipv6Address)
derive instance newtypeIpv6Addresses :: Newtype Ipv6Addresses _
derive instance repGenericIpv6Addresses :: Generic Ipv6Addresses _
instance showIpv6Addresses :: Show Ipv6Addresses where show = genericShow
instance decodeIpv6Addresses :: Decode Ipv6Addresses where decode = genericDecode options
instance encodeIpv6Addresses :: Encode Ipv6Addresses where encode = genericEncode options



newtype ListDetectorsRequest = ListDetectorsRequest 
  { "MaxResults" :: Maybe (MaxResults)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeListDetectorsRequest :: Newtype ListDetectorsRequest _
derive instance repGenericListDetectorsRequest :: Generic ListDetectorsRequest _
instance showListDetectorsRequest :: Show ListDetectorsRequest where show = genericShow
instance decodeListDetectorsRequest :: Decode ListDetectorsRequest where decode = genericDecode options
instance encodeListDetectorsRequest :: Encode ListDetectorsRequest where encode = genericEncode options

-- | Constructs ListDetectorsRequest from required parameters
newListDetectorsRequest :: ListDetectorsRequest
newListDetectorsRequest  = ListDetectorsRequest { "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListDetectorsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListDetectorsRequest' :: ( { "MaxResults" :: Maybe (MaxResults) , "NextToken" :: Maybe (String) } -> {"MaxResults" :: Maybe (MaxResults) , "NextToken" :: Maybe (String) } ) -> ListDetectorsRequest
newListDetectorsRequest'  customize = (ListDetectorsRequest <<< customize) { "MaxResults": Nothing, "NextToken": Nothing }



newtype ListDetectorsResponse = ListDetectorsResponse 
  { "DetectorIds" :: Maybe (DetectorIds)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListDetectorsResponse :: Newtype ListDetectorsResponse _
derive instance repGenericListDetectorsResponse :: Generic ListDetectorsResponse _
instance showListDetectorsResponse :: Show ListDetectorsResponse where show = genericShow
instance decodeListDetectorsResponse :: Decode ListDetectorsResponse where decode = genericDecode options
instance encodeListDetectorsResponse :: Encode ListDetectorsResponse where encode = genericEncode options

-- | Constructs ListDetectorsResponse from required parameters
newListDetectorsResponse :: ListDetectorsResponse
newListDetectorsResponse  = ListDetectorsResponse { "DetectorIds": Nothing, "NextToken": Nothing }

-- | Constructs ListDetectorsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListDetectorsResponse' :: ( { "DetectorIds" :: Maybe (DetectorIds) , "NextToken" :: Maybe (NextToken) } -> {"DetectorIds" :: Maybe (DetectorIds) , "NextToken" :: Maybe (NextToken) } ) -> ListDetectorsResponse
newListDetectorsResponse'  customize = (ListDetectorsResponse <<< customize) { "DetectorIds": Nothing, "NextToken": Nothing }



-- | ListFindings request body.
newtype ListFindingsRequest = ListFindingsRequest 
  { "DetectorId" :: (String)
  , "FindingCriteria" :: Maybe (FindingCriteria)
  , "MaxResults" :: Maybe (MaxResults)
  , "NextToken" :: Maybe (NextToken)
  , "SortCriteria" :: Maybe (SortCriteria)
  }
derive instance newtypeListFindingsRequest :: Newtype ListFindingsRequest _
derive instance repGenericListFindingsRequest :: Generic ListFindingsRequest _
instance showListFindingsRequest :: Show ListFindingsRequest where show = genericShow
instance decodeListFindingsRequest :: Decode ListFindingsRequest where decode = genericDecode options
instance encodeListFindingsRequest :: Encode ListFindingsRequest where encode = genericEncode options

-- | Constructs ListFindingsRequest from required parameters
newListFindingsRequest :: String -> ListFindingsRequest
newListFindingsRequest _DetectorId = ListFindingsRequest { "DetectorId": _DetectorId, "FindingCriteria": Nothing, "MaxResults": Nothing, "NextToken": Nothing, "SortCriteria": Nothing }

-- | Constructs ListFindingsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListFindingsRequest' :: String -> ( { "DetectorId" :: (String) , "FindingCriteria" :: Maybe (FindingCriteria) , "MaxResults" :: Maybe (MaxResults) , "NextToken" :: Maybe (NextToken) , "SortCriteria" :: Maybe (SortCriteria) } -> {"DetectorId" :: (String) , "FindingCriteria" :: Maybe (FindingCriteria) , "MaxResults" :: Maybe (MaxResults) , "NextToken" :: Maybe (NextToken) , "SortCriteria" :: Maybe (SortCriteria) } ) -> ListFindingsRequest
newListFindingsRequest' _DetectorId customize = (ListFindingsRequest <<< customize) { "DetectorId": _DetectorId, "FindingCriteria": Nothing, "MaxResults": Nothing, "NextToken": Nothing, "SortCriteria": Nothing }



newtype ListFindingsResponse = ListFindingsResponse 
  { "FindingIds" :: Maybe (FindingIds)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListFindingsResponse :: Newtype ListFindingsResponse _
derive instance repGenericListFindingsResponse :: Generic ListFindingsResponse _
instance showListFindingsResponse :: Show ListFindingsResponse where show = genericShow
instance decodeListFindingsResponse :: Decode ListFindingsResponse where decode = genericDecode options
instance encodeListFindingsResponse :: Encode ListFindingsResponse where encode = genericEncode options

-- | Constructs ListFindingsResponse from required parameters
newListFindingsResponse :: ListFindingsResponse
newListFindingsResponse  = ListFindingsResponse { "FindingIds": Nothing, "NextToken": Nothing }

-- | Constructs ListFindingsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListFindingsResponse' :: ( { "FindingIds" :: Maybe (FindingIds) , "NextToken" :: Maybe (NextToken) } -> {"FindingIds" :: Maybe (FindingIds) , "NextToken" :: Maybe (NextToken) } ) -> ListFindingsResponse
newListFindingsResponse'  customize = (ListFindingsResponse <<< customize) { "FindingIds": Nothing, "NextToken": Nothing }



newtype ListIPSetsRequest = ListIPSetsRequest 
  { "DetectorId" :: (String)
  , "MaxResults" :: Maybe (MaxResults)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeListIPSetsRequest :: Newtype ListIPSetsRequest _
derive instance repGenericListIPSetsRequest :: Generic ListIPSetsRequest _
instance showListIPSetsRequest :: Show ListIPSetsRequest where show = genericShow
instance decodeListIPSetsRequest :: Decode ListIPSetsRequest where decode = genericDecode options
instance encodeListIPSetsRequest :: Encode ListIPSetsRequest where encode = genericEncode options

-- | Constructs ListIPSetsRequest from required parameters
newListIPSetsRequest :: String -> ListIPSetsRequest
newListIPSetsRequest _DetectorId = ListIPSetsRequest { "DetectorId": _DetectorId, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListIPSetsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListIPSetsRequest' :: String -> ( { "DetectorId" :: (String) , "MaxResults" :: Maybe (MaxResults) , "NextToken" :: Maybe (String) } -> {"DetectorId" :: (String) , "MaxResults" :: Maybe (MaxResults) , "NextToken" :: Maybe (String) } ) -> ListIPSetsRequest
newListIPSetsRequest' _DetectorId customize = (ListIPSetsRequest <<< customize) { "DetectorId": _DetectorId, "MaxResults": Nothing, "NextToken": Nothing }



newtype ListIPSetsResponse = ListIPSetsResponse 
  { "IpSetIds" :: Maybe (IpSetIds)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListIPSetsResponse :: Newtype ListIPSetsResponse _
derive instance repGenericListIPSetsResponse :: Generic ListIPSetsResponse _
instance showListIPSetsResponse :: Show ListIPSetsResponse where show = genericShow
instance decodeListIPSetsResponse :: Decode ListIPSetsResponse where decode = genericDecode options
instance encodeListIPSetsResponse :: Encode ListIPSetsResponse where encode = genericEncode options

-- | Constructs ListIPSetsResponse from required parameters
newListIPSetsResponse :: ListIPSetsResponse
newListIPSetsResponse  = ListIPSetsResponse { "IpSetIds": Nothing, "NextToken": Nothing }

-- | Constructs ListIPSetsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListIPSetsResponse' :: ( { "IpSetIds" :: Maybe (IpSetIds) , "NextToken" :: Maybe (NextToken) } -> {"IpSetIds" :: Maybe (IpSetIds) , "NextToken" :: Maybe (NextToken) } ) -> ListIPSetsResponse
newListIPSetsResponse'  customize = (ListIPSetsResponse <<< customize) { "IpSetIds": Nothing, "NextToken": Nothing }



newtype ListInvitationsRequest = ListInvitationsRequest 
  { "MaxResults" :: Maybe (MaxResults)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeListInvitationsRequest :: Newtype ListInvitationsRequest _
derive instance repGenericListInvitationsRequest :: Generic ListInvitationsRequest _
instance showListInvitationsRequest :: Show ListInvitationsRequest where show = genericShow
instance decodeListInvitationsRequest :: Decode ListInvitationsRequest where decode = genericDecode options
instance encodeListInvitationsRequest :: Encode ListInvitationsRequest where encode = genericEncode options

-- | Constructs ListInvitationsRequest from required parameters
newListInvitationsRequest :: ListInvitationsRequest
newListInvitationsRequest  = ListInvitationsRequest { "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListInvitationsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListInvitationsRequest' :: ( { "MaxResults" :: Maybe (MaxResults) , "NextToken" :: Maybe (String) } -> {"MaxResults" :: Maybe (MaxResults) , "NextToken" :: Maybe (String) } ) -> ListInvitationsRequest
newListInvitationsRequest'  customize = (ListInvitationsRequest <<< customize) { "MaxResults": Nothing, "NextToken": Nothing }



newtype ListInvitationsResponse = ListInvitationsResponse 
  { "Invitations" :: Maybe (Invitations)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListInvitationsResponse :: Newtype ListInvitationsResponse _
derive instance repGenericListInvitationsResponse :: Generic ListInvitationsResponse _
instance showListInvitationsResponse :: Show ListInvitationsResponse where show = genericShow
instance decodeListInvitationsResponse :: Decode ListInvitationsResponse where decode = genericDecode options
instance encodeListInvitationsResponse :: Encode ListInvitationsResponse where encode = genericEncode options

-- | Constructs ListInvitationsResponse from required parameters
newListInvitationsResponse :: ListInvitationsResponse
newListInvitationsResponse  = ListInvitationsResponse { "Invitations": Nothing, "NextToken": Nothing }

-- | Constructs ListInvitationsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListInvitationsResponse' :: ( { "Invitations" :: Maybe (Invitations) , "NextToken" :: Maybe (NextToken) } -> {"Invitations" :: Maybe (Invitations) , "NextToken" :: Maybe (NextToken) } ) -> ListInvitationsResponse
newListInvitationsResponse'  customize = (ListInvitationsResponse <<< customize) { "Invitations": Nothing, "NextToken": Nothing }



newtype ListMembersRequest = ListMembersRequest 
  { "DetectorId" :: (String)
  , "MaxResults" :: Maybe (MaxResults)
  , "NextToken" :: Maybe (String)
  , "OnlyAssociated" :: Maybe (String)
  }
derive instance newtypeListMembersRequest :: Newtype ListMembersRequest _
derive instance repGenericListMembersRequest :: Generic ListMembersRequest _
instance showListMembersRequest :: Show ListMembersRequest where show = genericShow
instance decodeListMembersRequest :: Decode ListMembersRequest where decode = genericDecode options
instance encodeListMembersRequest :: Encode ListMembersRequest where encode = genericEncode options

-- | Constructs ListMembersRequest from required parameters
newListMembersRequest :: String -> ListMembersRequest
newListMembersRequest _DetectorId = ListMembersRequest { "DetectorId": _DetectorId, "MaxResults": Nothing, "NextToken": Nothing, "OnlyAssociated": Nothing }

-- | Constructs ListMembersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListMembersRequest' :: String -> ( { "DetectorId" :: (String) , "MaxResults" :: Maybe (MaxResults) , "NextToken" :: Maybe (String) , "OnlyAssociated" :: Maybe (String) } -> {"DetectorId" :: (String) , "MaxResults" :: Maybe (MaxResults) , "NextToken" :: Maybe (String) , "OnlyAssociated" :: Maybe (String) } ) -> ListMembersRequest
newListMembersRequest' _DetectorId customize = (ListMembersRequest <<< customize) { "DetectorId": _DetectorId, "MaxResults": Nothing, "NextToken": Nothing, "OnlyAssociated": Nothing }



newtype ListMembersResponse = ListMembersResponse 
  { "Members" :: Maybe (Members)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListMembersResponse :: Newtype ListMembersResponse _
derive instance repGenericListMembersResponse :: Generic ListMembersResponse _
instance showListMembersResponse :: Show ListMembersResponse where show = genericShow
instance decodeListMembersResponse :: Decode ListMembersResponse where decode = genericDecode options
instance encodeListMembersResponse :: Encode ListMembersResponse where encode = genericEncode options

-- | Constructs ListMembersResponse from required parameters
newListMembersResponse :: ListMembersResponse
newListMembersResponse  = ListMembersResponse { "Members": Nothing, "NextToken": Nothing }

-- | Constructs ListMembersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListMembersResponse' :: ( { "Members" :: Maybe (Members) , "NextToken" :: Maybe (NextToken) } -> {"Members" :: Maybe (Members) , "NextToken" :: Maybe (NextToken) } ) -> ListMembersResponse
newListMembersResponse'  customize = (ListMembersResponse <<< customize) { "Members": Nothing, "NextToken": Nothing }



newtype ListOfPortProbeDetail = ListOfPortProbeDetail (Array PortProbeDetail)
derive instance newtypeListOfPortProbeDetail :: Newtype ListOfPortProbeDetail _
derive instance repGenericListOfPortProbeDetail :: Generic ListOfPortProbeDetail _
instance showListOfPortProbeDetail :: Show ListOfPortProbeDetail where show = genericShow
instance decodeListOfPortProbeDetail :: Decode ListOfPortProbeDetail where decode = genericDecode options
instance encodeListOfPortProbeDetail :: Encode ListOfPortProbeDetail where encode = genericEncode options



newtype ListThreatIntelSetsRequest = ListThreatIntelSetsRequest 
  { "DetectorId" :: (String)
  , "MaxResults" :: Maybe (MaxResults)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeListThreatIntelSetsRequest :: Newtype ListThreatIntelSetsRequest _
derive instance repGenericListThreatIntelSetsRequest :: Generic ListThreatIntelSetsRequest _
instance showListThreatIntelSetsRequest :: Show ListThreatIntelSetsRequest where show = genericShow
instance decodeListThreatIntelSetsRequest :: Decode ListThreatIntelSetsRequest where decode = genericDecode options
instance encodeListThreatIntelSetsRequest :: Encode ListThreatIntelSetsRequest where encode = genericEncode options

-- | Constructs ListThreatIntelSetsRequest from required parameters
newListThreatIntelSetsRequest :: String -> ListThreatIntelSetsRequest
newListThreatIntelSetsRequest _DetectorId = ListThreatIntelSetsRequest { "DetectorId": _DetectorId, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListThreatIntelSetsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListThreatIntelSetsRequest' :: String -> ( { "DetectorId" :: (String) , "MaxResults" :: Maybe (MaxResults) , "NextToken" :: Maybe (String) } -> {"DetectorId" :: (String) , "MaxResults" :: Maybe (MaxResults) , "NextToken" :: Maybe (String) } ) -> ListThreatIntelSetsRequest
newListThreatIntelSetsRequest' _DetectorId customize = (ListThreatIntelSetsRequest <<< customize) { "DetectorId": _DetectorId, "MaxResults": Nothing, "NextToken": Nothing }



newtype ListThreatIntelSetsResponse = ListThreatIntelSetsResponse 
  { "NextToken" :: Maybe (NextToken)
  , "ThreatIntelSetIds" :: Maybe (ThreatIntelSetIds)
  }
derive instance newtypeListThreatIntelSetsResponse :: Newtype ListThreatIntelSetsResponse _
derive instance repGenericListThreatIntelSetsResponse :: Generic ListThreatIntelSetsResponse _
instance showListThreatIntelSetsResponse :: Show ListThreatIntelSetsResponse where show = genericShow
instance decodeListThreatIntelSetsResponse :: Decode ListThreatIntelSetsResponse where decode = genericDecode options
instance encodeListThreatIntelSetsResponse :: Encode ListThreatIntelSetsResponse where encode = genericEncode options

-- | Constructs ListThreatIntelSetsResponse from required parameters
newListThreatIntelSetsResponse :: ListThreatIntelSetsResponse
newListThreatIntelSetsResponse  = ListThreatIntelSetsResponse { "NextToken": Nothing, "ThreatIntelSetIds": Nothing }

-- | Constructs ListThreatIntelSetsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListThreatIntelSetsResponse' :: ( { "NextToken" :: Maybe (NextToken) , "ThreatIntelSetIds" :: Maybe (ThreatIntelSetIds) } -> {"NextToken" :: Maybe (NextToken) , "ThreatIntelSetIds" :: Maybe (ThreatIntelSetIds) } ) -> ListThreatIntelSetsResponse
newListThreatIntelSetsResponse'  customize = (ListThreatIntelSetsResponse <<< customize) { "NextToken": Nothing, "ThreatIntelSetIds": Nothing }



-- | Local port information of the connection.
newtype LocalPortDetails = LocalPortDetails 
  { "Port" :: Maybe (Int)
  , "PortName" :: Maybe (String)
  }
derive instance newtypeLocalPortDetails :: Newtype LocalPortDetails _
derive instance repGenericLocalPortDetails :: Generic LocalPortDetails _
instance showLocalPortDetails :: Show LocalPortDetails where show = genericShow
instance decodeLocalPortDetails :: Decode LocalPortDetails where decode = genericDecode options
instance encodeLocalPortDetails :: Encode LocalPortDetails where encode = genericEncode options

-- | Constructs LocalPortDetails from required parameters
newLocalPortDetails :: LocalPortDetails
newLocalPortDetails  = LocalPortDetails { "Port": Nothing, "PortName": Nothing }

-- | Constructs LocalPortDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLocalPortDetails' :: ( { "Port" :: Maybe (Int) , "PortName" :: Maybe (String) } -> {"Port" :: Maybe (Int) , "PortName" :: Maybe (String) } ) -> LocalPortDetails
newLocalPortDetails'  customize = (LocalPortDetails <<< customize) { "Port": Nothing, "PortName": Nothing }



-- | The location of the S3 bucket where the list resides. For example (https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key)
newtype Location = Location String
derive instance newtypeLocation :: Newtype Location _
derive instance repGenericLocation :: Generic Location _
instance showLocation :: Show Location where show = genericShow
instance decodeLocation :: Decode Location where decode = genericDecode options
instance encodeLocation :: Encode Location where encode = genericEncode options



newtype MapOfCondition = MapOfCondition (StrMap.StrMap Condition)
derive instance newtypeMapOfCondition :: Newtype MapOfCondition _
derive instance repGenericMapOfCondition :: Generic MapOfCondition _
instance showMapOfCondition :: Show MapOfCondition where show = genericShow
instance decodeMapOfCondition :: Decode MapOfCondition where decode = genericDecode options
instance encodeMapOfCondition :: Encode MapOfCondition where encode = genericEncode options



newtype MapOfCountBySeverityFindingStatistic = MapOfCountBySeverityFindingStatistic (StrMap.StrMap CountBySeverityFindingStatistic)
derive instance newtypeMapOfCountBySeverityFindingStatistic :: Newtype MapOfCountBySeverityFindingStatistic _
derive instance repGenericMapOfCountBySeverityFindingStatistic :: Generic MapOfCountBySeverityFindingStatistic _
instance showMapOfCountBySeverityFindingStatistic :: Show MapOfCountBySeverityFindingStatistic where show = genericShow
instance decodeMapOfCountBySeverityFindingStatistic :: Decode MapOfCountBySeverityFindingStatistic where decode = genericDecode options
instance encodeMapOfCountBySeverityFindingStatistic :: Encode MapOfCountBySeverityFindingStatistic where encode = genericEncode options



-- | Contains details about the master account.
newtype Master = Master 
  { "AccountId" :: Maybe (String)
  , "InvitationId" :: Maybe (InvitationId)
  , "InvitedAt" :: Maybe (InvitedAt)
  , "RelationshipStatus" :: Maybe (String)
  }
derive instance newtypeMaster :: Newtype Master _
derive instance repGenericMaster :: Generic Master _
instance showMaster :: Show Master where show = genericShow
instance decodeMaster :: Decode Master where decode = genericDecode options
instance encodeMaster :: Encode Master where encode = genericEncode options

-- | Constructs Master from required parameters
newMaster :: Master
newMaster  = Master { "AccountId": Nothing, "InvitationId": Nothing, "InvitedAt": Nothing, "RelationshipStatus": Nothing }

-- | Constructs Master's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMaster' :: ( { "AccountId" :: Maybe (String) , "InvitationId" :: Maybe (InvitationId) , "InvitedAt" :: Maybe (InvitedAt) , "RelationshipStatus" :: Maybe (String) } -> {"AccountId" :: Maybe (String) , "InvitationId" :: Maybe (InvitationId) , "InvitedAt" :: Maybe (InvitedAt) , "RelationshipStatus" :: Maybe (String) } ) -> Master
newMaster'  customize = (Master <<< customize) { "AccountId": Nothing, "InvitationId": Nothing, "InvitedAt": Nothing, "RelationshipStatus": Nothing }



-- | The master account ID.
newtype MasterId = MasterId String
derive instance newtypeMasterId :: Newtype MasterId _
derive instance repGenericMasterId :: Generic MasterId _
instance showMasterId :: Show MasterId where show = genericShow
instance decodeMasterId :: Decode MasterId where decode = genericDecode options
instance encodeMasterId :: Encode MasterId where encode = genericEncode options



newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where show = genericShow
instance decodeMaxResults :: Decode MaxResults where decode = genericDecode options
instance encodeMaxResults :: Encode MaxResults where encode = genericEncode options



-- | Contains details about the member account.
newtype Member = Member 
  { "AccountId" :: Maybe (AccountId)
  , "DetectorId" :: Maybe (DetectorId)
  , "Email" :: Maybe (Email)
  , "InvitedAt" :: Maybe (InvitedAt)
  , "MasterId" :: Maybe (MasterId)
  , "RelationshipStatus" :: Maybe (String)
  , "UpdatedAt" :: Maybe (UpdatedAt)
  }
derive instance newtypeMember :: Newtype Member _
derive instance repGenericMember :: Generic Member _
instance showMember :: Show Member where show = genericShow
instance decodeMember :: Decode Member where decode = genericDecode options
instance encodeMember :: Encode Member where encode = genericEncode options

-- | Constructs Member from required parameters
newMember :: Member
newMember  = Member { "AccountId": Nothing, "DetectorId": Nothing, "Email": Nothing, "InvitedAt": Nothing, "MasterId": Nothing, "RelationshipStatus": Nothing, "UpdatedAt": Nothing }

-- | Constructs Member's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMember' :: ( { "AccountId" :: Maybe (AccountId) , "DetectorId" :: Maybe (DetectorId) , "Email" :: Maybe (Email) , "InvitedAt" :: Maybe (InvitedAt) , "MasterId" :: Maybe (MasterId) , "RelationshipStatus" :: Maybe (String) , "UpdatedAt" :: Maybe (UpdatedAt) } -> {"AccountId" :: Maybe (AccountId) , "DetectorId" :: Maybe (DetectorId) , "Email" :: Maybe (Email) , "InvitedAt" :: Maybe (InvitedAt) , "MasterId" :: Maybe (MasterId) , "RelationshipStatus" :: Maybe (String) , "UpdatedAt" :: Maybe (UpdatedAt) } ) -> Member
newMember'  customize = (Member <<< customize) { "AccountId": Nothing, "DetectorId": Nothing, "Email": Nothing, "InvitedAt": Nothing, "MasterId": Nothing, "RelationshipStatus": Nothing, "UpdatedAt": Nothing }



-- | A list of member descriptions.
newtype Members = Members (Array Member)
derive instance newtypeMembers :: Newtype Members _
derive instance repGenericMembers :: Generic Members _
instance showMembers :: Show Members where show = genericShow
instance decodeMembers :: Decode Members where decode = genericDecode options
instance encodeMembers :: Encode Members where encode = genericEncode options



-- | The invitation message that you want to send to the accounts that you're inviting to GuardDuty as members.
newtype Message = Message String
derive instance newtypeMessage :: Newtype Message _
derive instance repGenericMessage :: Generic Message _
instance showMessage :: Show Message where show = genericShow
instance decodeMessage :: Decode Message where decode = genericDecode options
instance encodeMessage :: Encode Message where encode = genericEncode options



-- | The user-friendly name to identify the list.
newtype Name = Name String
derive instance newtypeName :: Newtype Name _
derive instance repGenericName :: Generic Name _
instance showName :: Show Name where show = genericShow
instance decodeName :: Decode Name where decode = genericDecode options
instance encodeName :: Encode Name where encode = genericEncode options



-- | Represents the not equal condition to be applied to a single field when querying for findings.
newtype Neq = Neq (Array String)
derive instance newtypeNeq :: Newtype Neq _
derive instance repGenericNeq :: Generic Neq _
instance showNeq :: Show Neq where show = genericShow
instance decodeNeq :: Decode Neq where decode = genericDecode options
instance encodeNeq :: Encode Neq where encode = genericEncode options



-- | Information about the NETWORK_CONNECTION action described in this finding.
newtype NetworkConnectionAction = NetworkConnectionAction 
  { "Blocked" :: Maybe (Boolean)
  , "ConnectionDirection" :: Maybe (String)
  , "LocalPortDetails" :: Maybe (LocalPortDetails)
  , "Protocol" :: Maybe (String)
  , "RemoteIpDetails" :: Maybe (RemoteIpDetails)
  , "RemotePortDetails" :: Maybe (RemotePortDetails)
  }
derive instance newtypeNetworkConnectionAction :: Newtype NetworkConnectionAction _
derive instance repGenericNetworkConnectionAction :: Generic NetworkConnectionAction _
instance showNetworkConnectionAction :: Show NetworkConnectionAction where show = genericShow
instance decodeNetworkConnectionAction :: Decode NetworkConnectionAction where decode = genericDecode options
instance encodeNetworkConnectionAction :: Encode NetworkConnectionAction where encode = genericEncode options

-- | Constructs NetworkConnectionAction from required parameters
newNetworkConnectionAction :: NetworkConnectionAction
newNetworkConnectionAction  = NetworkConnectionAction { "Blocked": Nothing, "ConnectionDirection": Nothing, "LocalPortDetails": Nothing, "Protocol": Nothing, "RemoteIpDetails": Nothing, "RemotePortDetails": Nothing }

-- | Constructs NetworkConnectionAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNetworkConnectionAction' :: ( { "Blocked" :: Maybe (Boolean) , "ConnectionDirection" :: Maybe (String) , "LocalPortDetails" :: Maybe (LocalPortDetails) , "Protocol" :: Maybe (String) , "RemoteIpDetails" :: Maybe (RemoteIpDetails) , "RemotePortDetails" :: Maybe (RemotePortDetails) } -> {"Blocked" :: Maybe (Boolean) , "ConnectionDirection" :: Maybe (String) , "LocalPortDetails" :: Maybe (LocalPortDetails) , "Protocol" :: Maybe (String) , "RemoteIpDetails" :: Maybe (RemoteIpDetails) , "RemotePortDetails" :: Maybe (RemotePortDetails) } ) -> NetworkConnectionAction
newNetworkConnectionAction'  customize = (NetworkConnectionAction <<< customize) { "Blocked": Nothing, "ConnectionDirection": Nothing, "LocalPortDetails": Nothing, "Protocol": Nothing, "RemoteIpDetails": Nothing, "RemotePortDetails": Nothing }



-- | The network interface information of the EC2 instance.
newtype NetworkInterface = NetworkInterface 
  { "Ipv6Addresses" :: Maybe (Ipv6Addresses)
  , "PrivateDnsName" :: Maybe (PrivateDnsName)
  , "PrivateIpAddress" :: Maybe (PrivateIpAddress)
  , "PrivateIpAddresses" :: Maybe (PrivateIpAddresses)
  , "PublicDnsName" :: Maybe (String)
  , "PublicIp" :: Maybe (String)
  , "SecurityGroups" :: Maybe (SecurityGroups)
  , "SubnetId" :: Maybe (String)
  , "VpcId" :: Maybe (String)
  }
derive instance newtypeNetworkInterface :: Newtype NetworkInterface _
derive instance repGenericNetworkInterface :: Generic NetworkInterface _
instance showNetworkInterface :: Show NetworkInterface where show = genericShow
instance decodeNetworkInterface :: Decode NetworkInterface where decode = genericDecode options
instance encodeNetworkInterface :: Encode NetworkInterface where encode = genericEncode options

-- | Constructs NetworkInterface from required parameters
newNetworkInterface :: NetworkInterface
newNetworkInterface  = NetworkInterface { "Ipv6Addresses": Nothing, "PrivateDnsName": Nothing, "PrivateIpAddress": Nothing, "PrivateIpAddresses": Nothing, "PublicDnsName": Nothing, "PublicIp": Nothing, "SecurityGroups": Nothing, "SubnetId": Nothing, "VpcId": Nothing }

-- | Constructs NetworkInterface's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNetworkInterface' :: ( { "Ipv6Addresses" :: Maybe (Ipv6Addresses) , "PrivateDnsName" :: Maybe (PrivateDnsName) , "PrivateIpAddress" :: Maybe (PrivateIpAddress) , "PrivateIpAddresses" :: Maybe (PrivateIpAddresses) , "PublicDnsName" :: Maybe (String) , "PublicIp" :: Maybe (String) , "SecurityGroups" :: Maybe (SecurityGroups) , "SubnetId" :: Maybe (String) , "VpcId" :: Maybe (String) } -> {"Ipv6Addresses" :: Maybe (Ipv6Addresses) , "PrivateDnsName" :: Maybe (PrivateDnsName) , "PrivateIpAddress" :: Maybe (PrivateIpAddress) , "PrivateIpAddresses" :: Maybe (PrivateIpAddresses) , "PublicDnsName" :: Maybe (String) , "PublicIp" :: Maybe (String) , "SecurityGroups" :: Maybe (SecurityGroups) , "SubnetId" :: Maybe (String) , "VpcId" :: Maybe (String) } ) -> NetworkInterface
newNetworkInterface'  customize = (NetworkInterface <<< customize) { "Ipv6Addresses": Nothing, "PrivateDnsName": Nothing, "PrivateIpAddress": Nothing, "PrivateIpAddresses": Nothing, "PublicDnsName": Nothing, "PublicIp": Nothing, "SecurityGroups": Nothing, "SubnetId": Nothing, "VpcId": Nothing }



-- | The network interface information of the EC2 instance.
newtype NetworkInterfaces = NetworkInterfaces (Array NetworkInterface)
derive instance newtypeNetworkInterfaces :: Newtype NetworkInterfaces _
derive instance repGenericNetworkInterfaces :: Generic NetworkInterfaces _
instance showNetworkInterfaces :: Show NetworkInterfaces where show = genericShow
instance decodeNetworkInterfaces :: Decode NetworkInterfaces where decode = genericDecode options
instance encodeNetworkInterfaces :: Encode NetworkInterfaces where encode = genericEncode options



-- | You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action fill nextToken in the request with the value of NextToken from the previous response to continue listing data.
newtype NextToken = NextToken String
derive instance newtypeNextToken :: Newtype NextToken _
derive instance repGenericNextToken :: Generic NextToken _
instance showNextToken :: Show NextToken where show = genericShow
instance decodeNextToken :: Decode NextToken where decode = genericDecode options
instance encodeNextToken :: Encode NextToken where encode = genericEncode options



newtype OrderBy = OrderBy String
derive instance newtypeOrderBy :: Newtype OrderBy _
derive instance repGenericOrderBy :: Generic OrderBy _
instance showOrderBy :: Show OrderBy where show = genericShow
instance decodeOrderBy :: Decode OrderBy where decode = genericDecode options
instance encodeOrderBy :: Encode OrderBy where encode = genericEncode options



-- | ISP Organization information of the remote IP address.
newtype Organization = Organization 
  { "Asn" :: Maybe (String)
  , "AsnOrg" :: Maybe (String)
  , "Isp" :: Maybe (String)
  , "Org" :: Maybe (String)
  }
derive instance newtypeOrganization :: Newtype Organization _
derive instance repGenericOrganization :: Generic Organization _
instance showOrganization :: Show Organization where show = genericShow
instance decodeOrganization :: Decode Organization where decode = genericDecode options
instance encodeOrganization :: Encode Organization where encode = genericEncode options

-- | Constructs Organization from required parameters
newOrganization :: Organization
newOrganization  = Organization { "Asn": Nothing, "AsnOrg": Nothing, "Isp": Nothing, "Org": Nothing }

-- | Constructs Organization's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOrganization' :: ( { "Asn" :: Maybe (String) , "AsnOrg" :: Maybe (String) , "Isp" :: Maybe (String) , "Org" :: Maybe (String) } -> {"Asn" :: Maybe (String) , "AsnOrg" :: Maybe (String) , "Isp" :: Maybe (String) , "Org" :: Maybe (String) } ) -> Organization
newOrganization'  customize = (Organization <<< customize) { "Asn": Nothing, "AsnOrg": Nothing, "Isp": Nothing, "Org": Nothing }



-- | Information about the PORT_PROBE action described in this finding.
newtype PortProbeAction = PortProbeAction 
  { "Blocked" :: Maybe (Boolean)
  , "PortProbeDetails" :: Maybe (ListOfPortProbeDetail)
  }
derive instance newtypePortProbeAction :: Newtype PortProbeAction _
derive instance repGenericPortProbeAction :: Generic PortProbeAction _
instance showPortProbeAction :: Show PortProbeAction where show = genericShow
instance decodePortProbeAction :: Decode PortProbeAction where decode = genericDecode options
instance encodePortProbeAction :: Encode PortProbeAction where encode = genericEncode options

-- | Constructs PortProbeAction from required parameters
newPortProbeAction :: PortProbeAction
newPortProbeAction  = PortProbeAction { "Blocked": Nothing, "PortProbeDetails": Nothing }

-- | Constructs PortProbeAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPortProbeAction' :: ( { "Blocked" :: Maybe (Boolean) , "PortProbeDetails" :: Maybe (ListOfPortProbeDetail) } -> {"Blocked" :: Maybe (Boolean) , "PortProbeDetails" :: Maybe (ListOfPortProbeDetail) } ) -> PortProbeAction
newPortProbeAction'  customize = (PortProbeAction <<< customize) { "Blocked": Nothing, "PortProbeDetails": Nothing }



-- | Details about the port probe finding.
newtype PortProbeDetail = PortProbeDetail 
  { "LocalPortDetails" :: Maybe (LocalPortDetails)
  , "RemoteIpDetails" :: Maybe (RemoteIpDetails)
  }
derive instance newtypePortProbeDetail :: Newtype PortProbeDetail _
derive instance repGenericPortProbeDetail :: Generic PortProbeDetail _
instance showPortProbeDetail :: Show PortProbeDetail where show = genericShow
instance decodePortProbeDetail :: Decode PortProbeDetail where decode = genericDecode options
instance encodePortProbeDetail :: Encode PortProbeDetail where encode = genericEncode options

-- | Constructs PortProbeDetail from required parameters
newPortProbeDetail :: PortProbeDetail
newPortProbeDetail  = PortProbeDetail { "LocalPortDetails": Nothing, "RemoteIpDetails": Nothing }

-- | Constructs PortProbeDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPortProbeDetail' :: ( { "LocalPortDetails" :: Maybe (LocalPortDetails) , "RemoteIpDetails" :: Maybe (RemoteIpDetails) } -> {"LocalPortDetails" :: Maybe (LocalPortDetails) , "RemoteIpDetails" :: Maybe (RemoteIpDetails) } ) -> PortProbeDetail
newPortProbeDetail'  customize = (PortProbeDetail <<< customize) { "LocalPortDetails": Nothing, "RemoteIpDetails": Nothing }



-- | Private DNS name of the EC2 instance.
newtype PrivateDnsName = PrivateDnsName String
derive instance newtypePrivateDnsName :: Newtype PrivateDnsName _
derive instance repGenericPrivateDnsName :: Generic PrivateDnsName _
instance showPrivateDnsName :: Show PrivateDnsName where show = genericShow
instance decodePrivateDnsName :: Decode PrivateDnsName where decode = genericDecode options
instance encodePrivateDnsName :: Encode PrivateDnsName where encode = genericEncode options



-- | Private IP address of the EC2 instance.
newtype PrivateIpAddress = PrivateIpAddress String
derive instance newtypePrivateIpAddress :: Newtype PrivateIpAddress _
derive instance repGenericPrivateIpAddress :: Generic PrivateIpAddress _
instance showPrivateIpAddress :: Show PrivateIpAddress where show = genericShow
instance decodePrivateIpAddress :: Decode PrivateIpAddress where decode = genericDecode options
instance encodePrivateIpAddress :: Encode PrivateIpAddress where encode = genericEncode options



-- | Other private IP address information of the EC2 instance.
newtype PrivateIpAddressDetails = PrivateIpAddressDetails 
  { "PrivateDnsName" :: Maybe (PrivateDnsName)
  , "PrivateIpAddress" :: Maybe (PrivateIpAddress)
  }
derive instance newtypePrivateIpAddressDetails :: Newtype PrivateIpAddressDetails _
derive instance repGenericPrivateIpAddressDetails :: Generic PrivateIpAddressDetails _
instance showPrivateIpAddressDetails :: Show PrivateIpAddressDetails where show = genericShow
instance decodePrivateIpAddressDetails :: Decode PrivateIpAddressDetails where decode = genericDecode options
instance encodePrivateIpAddressDetails :: Encode PrivateIpAddressDetails where encode = genericEncode options

-- | Constructs PrivateIpAddressDetails from required parameters
newPrivateIpAddressDetails :: PrivateIpAddressDetails
newPrivateIpAddressDetails  = PrivateIpAddressDetails { "PrivateDnsName": Nothing, "PrivateIpAddress": Nothing }

-- | Constructs PrivateIpAddressDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPrivateIpAddressDetails' :: ( { "PrivateDnsName" :: Maybe (PrivateDnsName) , "PrivateIpAddress" :: Maybe (PrivateIpAddress) } -> {"PrivateDnsName" :: Maybe (PrivateDnsName) , "PrivateIpAddress" :: Maybe (PrivateIpAddress) } ) -> PrivateIpAddressDetails
newPrivateIpAddressDetails'  customize = (PrivateIpAddressDetails <<< customize) { "PrivateDnsName": Nothing, "PrivateIpAddress": Nothing }



-- | Other private IP address information of the EC2 instance.
newtype PrivateIpAddresses = PrivateIpAddresses (Array PrivateIpAddressDetails)
derive instance newtypePrivateIpAddresses :: Newtype PrivateIpAddresses _
derive instance repGenericPrivateIpAddresses :: Generic PrivateIpAddresses _
instance showPrivateIpAddresses :: Show PrivateIpAddresses where show = genericShow
instance decodePrivateIpAddresses :: Decode PrivateIpAddresses where decode = genericDecode options
instance encodePrivateIpAddresses :: Encode PrivateIpAddresses where encode = genericEncode options



-- | The product code of the EC2 instance.
newtype ProductCode = ProductCode 
  { "Code" :: Maybe (String)
  , "ProductType" :: Maybe (String)
  }
derive instance newtypeProductCode :: Newtype ProductCode _
derive instance repGenericProductCode :: Generic ProductCode _
instance showProductCode :: Show ProductCode where show = genericShow
instance decodeProductCode :: Decode ProductCode where decode = genericDecode options
instance encodeProductCode :: Encode ProductCode where encode = genericEncode options

-- | Constructs ProductCode from required parameters
newProductCode :: ProductCode
newProductCode  = ProductCode { "Code": Nothing, "ProductType": Nothing }

-- | Constructs ProductCode's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newProductCode' :: ( { "Code" :: Maybe (String) , "ProductType" :: Maybe (String) } -> {"Code" :: Maybe (String) , "ProductType" :: Maybe (String) } ) -> ProductCode
newProductCode'  customize = (ProductCode <<< customize) { "Code": Nothing, "ProductType": Nothing }



-- | The product code of the EC2 instance.
newtype ProductCodes = ProductCodes (Array ProductCode)
derive instance newtypeProductCodes :: Newtype ProductCodes _
derive instance repGenericProductCodes :: Generic ProductCodes _
instance showProductCodes :: Show ProductCodes where show = genericShow
instance decodeProductCodes :: Decode ProductCodes where decode = genericDecode options
instance encodeProductCodes :: Encode ProductCodes where encode = genericEncode options



-- | Remote IP information of the connection.
newtype RemoteIpDetails = RemoteIpDetails 
  { "City" :: Maybe (City)
  , "Country" :: Maybe (Country)
  , "GeoLocation" :: Maybe (GeoLocation)
  , "IpAddressV4" :: Maybe (String)
  , "Organization" :: Maybe (Organization)
  }
derive instance newtypeRemoteIpDetails :: Newtype RemoteIpDetails _
derive instance repGenericRemoteIpDetails :: Generic RemoteIpDetails _
instance showRemoteIpDetails :: Show RemoteIpDetails where show = genericShow
instance decodeRemoteIpDetails :: Decode RemoteIpDetails where decode = genericDecode options
instance encodeRemoteIpDetails :: Encode RemoteIpDetails where encode = genericEncode options

-- | Constructs RemoteIpDetails from required parameters
newRemoteIpDetails :: RemoteIpDetails
newRemoteIpDetails  = RemoteIpDetails { "City": Nothing, "Country": Nothing, "GeoLocation": Nothing, "IpAddressV4": Nothing, "Organization": Nothing }

-- | Constructs RemoteIpDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRemoteIpDetails' :: ( { "City" :: Maybe (City) , "Country" :: Maybe (Country) , "GeoLocation" :: Maybe (GeoLocation) , "IpAddressV4" :: Maybe (String) , "Organization" :: Maybe (Organization) } -> {"City" :: Maybe (City) , "Country" :: Maybe (Country) , "GeoLocation" :: Maybe (GeoLocation) , "IpAddressV4" :: Maybe (String) , "Organization" :: Maybe (Organization) } ) -> RemoteIpDetails
newRemoteIpDetails'  customize = (RemoteIpDetails <<< customize) { "City": Nothing, "Country": Nothing, "GeoLocation": Nothing, "IpAddressV4": Nothing, "Organization": Nothing }



-- | Remote port information of the connection.
newtype RemotePortDetails = RemotePortDetails 
  { "Port" :: Maybe (Int)
  , "PortName" :: Maybe (String)
  }
derive instance newtypeRemotePortDetails :: Newtype RemotePortDetails _
derive instance repGenericRemotePortDetails :: Generic RemotePortDetails _
instance showRemotePortDetails :: Show RemotePortDetails where show = genericShow
instance decodeRemotePortDetails :: Decode RemotePortDetails where decode = genericDecode options
instance encodeRemotePortDetails :: Encode RemotePortDetails where encode = genericEncode options

-- | Constructs RemotePortDetails from required parameters
newRemotePortDetails :: RemotePortDetails
newRemotePortDetails  = RemotePortDetails { "Port": Nothing, "PortName": Nothing }

-- | Constructs RemotePortDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRemotePortDetails' :: ( { "Port" :: Maybe (Int) , "PortName" :: Maybe (String) } -> {"Port" :: Maybe (Int) , "PortName" :: Maybe (String) } ) -> RemotePortDetails
newRemotePortDetails'  customize = (RemotePortDetails <<< customize) { "Port": Nothing, "PortName": Nothing }



-- | The AWS resource associated with the activity that prompted GuardDuty to generate a finding.
newtype Resource = Resource 
  { "AccessKeyDetails" :: Maybe (AccessKeyDetails)
  , "InstanceDetails" :: Maybe (InstanceDetails)
  , "ResourceType" :: Maybe (String)
  }
derive instance newtypeResource :: Newtype Resource _
derive instance repGenericResource :: Generic Resource _
instance showResource :: Show Resource where show = genericShow
instance decodeResource :: Decode Resource where decode = genericDecode options
instance encodeResource :: Encode Resource where encode = genericEncode options

-- | Constructs Resource from required parameters
newResource :: Resource
newResource  = Resource { "AccessKeyDetails": Nothing, "InstanceDetails": Nothing, "ResourceType": Nothing }

-- | Constructs Resource's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResource' :: ( { "AccessKeyDetails" :: Maybe (AccessKeyDetails) , "InstanceDetails" :: Maybe (InstanceDetails) , "ResourceType" :: Maybe (String) } -> {"AccessKeyDetails" :: Maybe (AccessKeyDetails) , "InstanceDetails" :: Maybe (InstanceDetails) , "ResourceType" :: Maybe (String) } ) -> Resource
newResource'  customize = (Resource <<< customize) { "AccessKeyDetails": Nothing, "InstanceDetails": Nothing, "ResourceType": Nothing }



-- | Security groups associated with the EC2 instance.
newtype SecurityGroup = SecurityGroup 
  { "GroupId" :: Maybe (String)
  , "GroupName" :: Maybe (String)
  }
derive instance newtypeSecurityGroup :: Newtype SecurityGroup _
derive instance repGenericSecurityGroup :: Generic SecurityGroup _
instance showSecurityGroup :: Show SecurityGroup where show = genericShow
instance decodeSecurityGroup :: Decode SecurityGroup where decode = genericDecode options
instance encodeSecurityGroup :: Encode SecurityGroup where encode = genericEncode options

-- | Constructs SecurityGroup from required parameters
newSecurityGroup :: SecurityGroup
newSecurityGroup  = SecurityGroup { "GroupId": Nothing, "GroupName": Nothing }

-- | Constructs SecurityGroup's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSecurityGroup' :: ( { "GroupId" :: Maybe (String) , "GroupName" :: Maybe (String) } -> {"GroupId" :: Maybe (String) , "GroupName" :: Maybe (String) } ) -> SecurityGroup
newSecurityGroup'  customize = (SecurityGroup <<< customize) { "GroupId": Nothing, "GroupName": Nothing }



-- | Security groups associated with the EC2 instance.
newtype SecurityGroups = SecurityGroups (Array SecurityGroup)
derive instance newtypeSecurityGroups :: Newtype SecurityGroups _
derive instance repGenericSecurityGroups :: Generic SecurityGroups _
instance showSecurityGroups :: Show SecurityGroups where show = genericShow
instance decodeSecurityGroups :: Decode SecurityGroups where decode = genericDecode options
instance encodeSecurityGroups :: Encode SecurityGroups where encode = genericEncode options



-- | Additional information assigned to the generated finding by GuardDuty.
newtype Service = Service 
  { "Action" :: Maybe (Action)
  , "Archived" :: Maybe (Boolean)
  , "Count" :: Maybe (Int)
  , "DetectorId" :: Maybe (DetectorId)
  , "EventFirstSeen" :: Maybe (String)
  , "EventLastSeen" :: Maybe (String)
  , "ResourceRole" :: Maybe (String)
  , "ServiceName" :: Maybe (String)
  , "UserFeedback" :: Maybe (String)
  }
derive instance newtypeService :: Newtype Service _
derive instance repGenericService :: Generic Service _
instance showService :: Show Service where show = genericShow
instance decodeService :: Decode Service where decode = genericDecode options
instance encodeService :: Encode Service where encode = genericEncode options

-- | Constructs Service from required parameters
newService :: Service
newService  = Service { "Action": Nothing, "Archived": Nothing, "Count": Nothing, "DetectorId": Nothing, "EventFirstSeen": Nothing, "EventLastSeen": Nothing, "ResourceRole": Nothing, "ServiceName": Nothing, "UserFeedback": Nothing }

-- | Constructs Service's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newService' :: ( { "Action" :: Maybe (Action) , "Archived" :: Maybe (Boolean) , "Count" :: Maybe (Int) , "DetectorId" :: Maybe (DetectorId) , "EventFirstSeen" :: Maybe (String) , "EventLastSeen" :: Maybe (String) , "ResourceRole" :: Maybe (String) , "ServiceName" :: Maybe (String) , "UserFeedback" :: Maybe (String) } -> {"Action" :: Maybe (Action) , "Archived" :: Maybe (Boolean) , "Count" :: Maybe (Int) , "DetectorId" :: Maybe (DetectorId) , "EventFirstSeen" :: Maybe (String) , "EventLastSeen" :: Maybe (String) , "ResourceRole" :: Maybe (String) , "ServiceName" :: Maybe (String) , "UserFeedback" :: Maybe (String) } ) -> Service
newService'  customize = (Service <<< customize) { "Action": Nothing, "Archived": Nothing, "Count": Nothing, "DetectorId": Nothing, "EventFirstSeen": Nothing, "EventLastSeen": Nothing, "ResourceRole": Nothing, "ServiceName": Nothing, "UserFeedback": Nothing }



-- | Customer serviceRole name or ARN for accessing customer resources
newtype ServiceRole = ServiceRole String
derive instance newtypeServiceRole :: Newtype ServiceRole _
derive instance repGenericServiceRole :: Generic ServiceRole _
instance showServiceRole :: Show ServiceRole where show = genericShow
instance decodeServiceRole :: Decode ServiceRole where decode = genericDecode options
instance encodeServiceRole :: Encode ServiceRole where encode = genericEncode options



-- | Represents the criteria used for sorting findings.
newtype SortCriteria = SortCriteria 
  { "AttributeName" :: Maybe (String)
  , "OrderBy" :: Maybe (OrderBy)
  }
derive instance newtypeSortCriteria :: Newtype SortCriteria _
derive instance repGenericSortCriteria :: Generic SortCriteria _
instance showSortCriteria :: Show SortCriteria where show = genericShow
instance decodeSortCriteria :: Decode SortCriteria where decode = genericDecode options
instance encodeSortCriteria :: Encode SortCriteria where encode = genericEncode options

-- | Constructs SortCriteria from required parameters
newSortCriteria :: SortCriteria
newSortCriteria  = SortCriteria { "AttributeName": Nothing, "OrderBy": Nothing }

-- | Constructs SortCriteria's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSortCriteria' :: ( { "AttributeName" :: Maybe (String) , "OrderBy" :: Maybe (OrderBy) } -> {"AttributeName" :: Maybe (String) , "OrderBy" :: Maybe (OrderBy) } ) -> SortCriteria
newSortCriteria'  customize = (SortCriteria <<< customize) { "AttributeName": Nothing, "OrderBy": Nothing }



-- | StartMonitoringMembers request body.
newtype StartMonitoringMembersRequest = StartMonitoringMembersRequest 
  { "AccountIds" :: Maybe (AccountIds)
  , "DetectorId" :: (String)
  }
derive instance newtypeStartMonitoringMembersRequest :: Newtype StartMonitoringMembersRequest _
derive instance repGenericStartMonitoringMembersRequest :: Generic StartMonitoringMembersRequest _
instance showStartMonitoringMembersRequest :: Show StartMonitoringMembersRequest where show = genericShow
instance decodeStartMonitoringMembersRequest :: Decode StartMonitoringMembersRequest where decode = genericDecode options
instance encodeStartMonitoringMembersRequest :: Encode StartMonitoringMembersRequest where encode = genericEncode options

-- | Constructs StartMonitoringMembersRequest from required parameters
newStartMonitoringMembersRequest :: String -> StartMonitoringMembersRequest
newStartMonitoringMembersRequest _DetectorId = StartMonitoringMembersRequest { "DetectorId": _DetectorId, "AccountIds": Nothing }

-- | Constructs StartMonitoringMembersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartMonitoringMembersRequest' :: String -> ( { "AccountIds" :: Maybe (AccountIds) , "DetectorId" :: (String) } -> {"AccountIds" :: Maybe (AccountIds) , "DetectorId" :: (String) } ) -> StartMonitoringMembersRequest
newStartMonitoringMembersRequest' _DetectorId customize = (StartMonitoringMembersRequest <<< customize) { "DetectorId": _DetectorId, "AccountIds": Nothing }



newtype StartMonitoringMembersResponse = StartMonitoringMembersResponse 
  { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts)
  }
derive instance newtypeStartMonitoringMembersResponse :: Newtype StartMonitoringMembersResponse _
derive instance repGenericStartMonitoringMembersResponse :: Generic StartMonitoringMembersResponse _
instance showStartMonitoringMembersResponse :: Show StartMonitoringMembersResponse where show = genericShow
instance decodeStartMonitoringMembersResponse :: Decode StartMonitoringMembersResponse where decode = genericDecode options
instance encodeStartMonitoringMembersResponse :: Encode StartMonitoringMembersResponse where encode = genericEncode options

-- | Constructs StartMonitoringMembersResponse from required parameters
newStartMonitoringMembersResponse :: StartMonitoringMembersResponse
newStartMonitoringMembersResponse  = StartMonitoringMembersResponse { "UnprocessedAccounts": Nothing }

-- | Constructs StartMonitoringMembersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartMonitoringMembersResponse' :: ( { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) } -> {"UnprocessedAccounts" :: Maybe (UnprocessedAccounts) } ) -> StartMonitoringMembersResponse
newStartMonitoringMembersResponse'  customize = (StartMonitoringMembersResponse <<< customize) { "UnprocessedAccounts": Nothing }



-- | StopMonitoringMembers request body.
newtype StopMonitoringMembersRequest = StopMonitoringMembersRequest 
  { "AccountIds" :: Maybe (AccountIds)
  , "DetectorId" :: (String)
  }
derive instance newtypeStopMonitoringMembersRequest :: Newtype StopMonitoringMembersRequest _
derive instance repGenericStopMonitoringMembersRequest :: Generic StopMonitoringMembersRequest _
instance showStopMonitoringMembersRequest :: Show StopMonitoringMembersRequest where show = genericShow
instance decodeStopMonitoringMembersRequest :: Decode StopMonitoringMembersRequest where decode = genericDecode options
instance encodeStopMonitoringMembersRequest :: Encode StopMonitoringMembersRequest where encode = genericEncode options

-- | Constructs StopMonitoringMembersRequest from required parameters
newStopMonitoringMembersRequest :: String -> StopMonitoringMembersRequest
newStopMonitoringMembersRequest _DetectorId = StopMonitoringMembersRequest { "DetectorId": _DetectorId, "AccountIds": Nothing }

-- | Constructs StopMonitoringMembersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStopMonitoringMembersRequest' :: String -> ( { "AccountIds" :: Maybe (AccountIds) , "DetectorId" :: (String) } -> {"AccountIds" :: Maybe (AccountIds) , "DetectorId" :: (String) } ) -> StopMonitoringMembersRequest
newStopMonitoringMembersRequest' _DetectorId customize = (StopMonitoringMembersRequest <<< customize) { "DetectorId": _DetectorId, "AccountIds": Nothing }



newtype StopMonitoringMembersResponse = StopMonitoringMembersResponse 
  { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts)
  }
derive instance newtypeStopMonitoringMembersResponse :: Newtype StopMonitoringMembersResponse _
derive instance repGenericStopMonitoringMembersResponse :: Generic StopMonitoringMembersResponse _
instance showStopMonitoringMembersResponse :: Show StopMonitoringMembersResponse where show = genericShow
instance decodeStopMonitoringMembersResponse :: Decode StopMonitoringMembersResponse where decode = genericDecode options
instance encodeStopMonitoringMembersResponse :: Encode StopMonitoringMembersResponse where encode = genericEncode options

-- | Constructs StopMonitoringMembersResponse from required parameters
newStopMonitoringMembersResponse :: StopMonitoringMembersResponse
newStopMonitoringMembersResponse  = StopMonitoringMembersResponse { "UnprocessedAccounts": Nothing }

-- | Constructs StopMonitoringMembersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStopMonitoringMembersResponse' :: ( { "UnprocessedAccounts" :: Maybe (UnprocessedAccounts) } -> {"UnprocessedAccounts" :: Maybe (UnprocessedAccounts) } ) -> StopMonitoringMembersResponse
newStopMonitoringMembersResponse'  customize = (StopMonitoringMembersResponse <<< customize) { "UnprocessedAccounts": Nothing }



-- | A tag of the EC2 instance.
newtype Tag = Tag 
  { "Key" :: Maybe (String)
  , "Value" :: Maybe (String)
  }
derive instance newtypeTag :: Newtype Tag _
derive instance repGenericTag :: Generic Tag _
instance showTag :: Show Tag where show = genericShow
instance decodeTag :: Decode Tag where decode = genericDecode options
instance encodeTag :: Encode Tag where encode = genericEncode options

-- | Constructs Tag from required parameters
newTag :: Tag
newTag  = Tag { "Key": Nothing, "Value": Nothing }

-- | Constructs Tag's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTag' :: ( { "Key" :: Maybe (String) , "Value" :: Maybe (String) } -> {"Key" :: Maybe (String) , "Value" :: Maybe (String) } ) -> Tag
newTag'  customize = (Tag <<< customize) { "Key": Nothing, "Value": Nothing }



-- | The tags of the EC2 instance.
newtype Tags = Tags (Array Tag)
derive instance newtypeTags :: Newtype Tags _
derive instance repGenericTags :: Generic Tags _
instance showTags :: Show Tags where show = genericShow
instance decodeTags :: Decode Tags where decode = genericDecode options
instance encodeTags :: Encode Tags where encode = genericEncode options



-- | The format of the threatIntelSet.
newtype ThreatIntelSetFormat = ThreatIntelSetFormat String
derive instance newtypeThreatIntelSetFormat :: Newtype ThreatIntelSetFormat _
derive instance repGenericThreatIntelSetFormat :: Generic ThreatIntelSetFormat _
instance showThreatIntelSetFormat :: Show ThreatIntelSetFormat where show = genericShow
instance decodeThreatIntelSetFormat :: Decode ThreatIntelSetFormat where decode = genericDecode options
instance encodeThreatIntelSetFormat :: Encode ThreatIntelSetFormat where encode = genericEncode options



-- | The unique identifier for an threat intel set
newtype ThreatIntelSetId = ThreatIntelSetId String
derive instance newtypeThreatIntelSetId :: Newtype ThreatIntelSetId _
derive instance repGenericThreatIntelSetId :: Generic ThreatIntelSetId _
instance showThreatIntelSetId :: Show ThreatIntelSetId where show = genericShow
instance decodeThreatIntelSetId :: Decode ThreatIntelSetId where decode = genericDecode options
instance encodeThreatIntelSetId :: Encode ThreatIntelSetId where encode = genericEncode options



-- | The list of the threat intel set IDs
newtype ThreatIntelSetIds = ThreatIntelSetIds (Array ThreatIntelSetId)
derive instance newtypeThreatIntelSetIds :: Newtype ThreatIntelSetIds _
derive instance repGenericThreatIntelSetIds :: Generic ThreatIntelSetIds _
instance showThreatIntelSetIds :: Show ThreatIntelSetIds where show = genericShow
instance decodeThreatIntelSetIds :: Decode ThreatIntelSetIds where decode = genericDecode options
instance encodeThreatIntelSetIds :: Encode ThreatIntelSetIds where encode = genericEncode options



-- | The status of threatIntelSet file uploaded.
newtype ThreatIntelSetStatus = ThreatIntelSetStatus String
derive instance newtypeThreatIntelSetStatus :: Newtype ThreatIntelSetStatus _
derive instance repGenericThreatIntelSetStatus :: Generic ThreatIntelSetStatus _
instance showThreatIntelSetStatus :: Show ThreatIntelSetStatus where show = genericShow
instance decodeThreatIntelSetStatus :: Decode ThreatIntelSetStatus where decode = genericDecode options
instance encodeThreatIntelSetStatus :: Encode ThreatIntelSetStatus where encode = genericEncode options



-- | UnarchiveFindings request body.
newtype UnarchiveFindingsRequest = UnarchiveFindingsRequest 
  { "DetectorId" :: (String)
  , "FindingIds" :: Maybe (FindingIds)
  }
derive instance newtypeUnarchiveFindingsRequest :: Newtype UnarchiveFindingsRequest _
derive instance repGenericUnarchiveFindingsRequest :: Generic UnarchiveFindingsRequest _
instance showUnarchiveFindingsRequest :: Show UnarchiveFindingsRequest where show = genericShow
instance decodeUnarchiveFindingsRequest :: Decode UnarchiveFindingsRequest where decode = genericDecode options
instance encodeUnarchiveFindingsRequest :: Encode UnarchiveFindingsRequest where encode = genericEncode options

-- | Constructs UnarchiveFindingsRequest from required parameters
newUnarchiveFindingsRequest :: String -> UnarchiveFindingsRequest
newUnarchiveFindingsRequest _DetectorId = UnarchiveFindingsRequest { "DetectorId": _DetectorId, "FindingIds": Nothing }

-- | Constructs UnarchiveFindingsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnarchiveFindingsRequest' :: String -> ( { "DetectorId" :: (String) , "FindingIds" :: Maybe (FindingIds) } -> {"DetectorId" :: (String) , "FindingIds" :: Maybe (FindingIds) } ) -> UnarchiveFindingsRequest
newUnarchiveFindingsRequest' _DetectorId customize = (UnarchiveFindingsRequest <<< customize) { "DetectorId": _DetectorId, "FindingIds": Nothing }



newtype UnarchiveFindingsResponse = UnarchiveFindingsResponse Types.NoArguments
derive instance newtypeUnarchiveFindingsResponse :: Newtype UnarchiveFindingsResponse _
derive instance repGenericUnarchiveFindingsResponse :: Generic UnarchiveFindingsResponse _
instance showUnarchiveFindingsResponse :: Show UnarchiveFindingsResponse where show = genericShow
instance decodeUnarchiveFindingsResponse :: Decode UnarchiveFindingsResponse where decode = genericDecode options
instance encodeUnarchiveFindingsResponse :: Encode UnarchiveFindingsResponse where encode = genericEncode options



-- | An object containing the unprocessed account and a result string explaining why it was unprocessed.
newtype UnprocessedAccount = UnprocessedAccount 
  { "AccountId" :: Maybe (String)
  , "Result" :: Maybe (String)
  }
derive instance newtypeUnprocessedAccount :: Newtype UnprocessedAccount _
derive instance repGenericUnprocessedAccount :: Generic UnprocessedAccount _
instance showUnprocessedAccount :: Show UnprocessedAccount where show = genericShow
instance decodeUnprocessedAccount :: Decode UnprocessedAccount where decode = genericDecode options
instance encodeUnprocessedAccount :: Encode UnprocessedAccount where encode = genericEncode options

-- | Constructs UnprocessedAccount from required parameters
newUnprocessedAccount :: UnprocessedAccount
newUnprocessedAccount  = UnprocessedAccount { "AccountId": Nothing, "Result": Nothing }

-- | Constructs UnprocessedAccount's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnprocessedAccount' :: ( { "AccountId" :: Maybe (String) , "Result" :: Maybe (String) } -> {"AccountId" :: Maybe (String) , "Result" :: Maybe (String) } ) -> UnprocessedAccount
newUnprocessedAccount'  customize = (UnprocessedAccount <<< customize) { "AccountId": Nothing, "Result": Nothing }



-- | A list of objects containing the unprocessed account and a result string explaining why it was unprocessed.
newtype UnprocessedAccounts = UnprocessedAccounts (Array UnprocessedAccount)
derive instance newtypeUnprocessedAccounts :: Newtype UnprocessedAccounts _
derive instance repGenericUnprocessedAccounts :: Generic UnprocessedAccounts _
instance showUnprocessedAccounts :: Show UnprocessedAccounts where show = genericShow
instance decodeUnprocessedAccounts :: Decode UnprocessedAccounts where decode = genericDecode options
instance encodeUnprocessedAccounts :: Encode UnprocessedAccounts where encode = genericEncode options



-- | UpdateDetector request body.
newtype UpdateDetectorRequest = UpdateDetectorRequest 
  { "DetectorId" :: (String)
  , "Enable" :: Maybe (Enable)
  }
derive instance newtypeUpdateDetectorRequest :: Newtype UpdateDetectorRequest _
derive instance repGenericUpdateDetectorRequest :: Generic UpdateDetectorRequest _
instance showUpdateDetectorRequest :: Show UpdateDetectorRequest where show = genericShow
instance decodeUpdateDetectorRequest :: Decode UpdateDetectorRequest where decode = genericDecode options
instance encodeUpdateDetectorRequest :: Encode UpdateDetectorRequest where encode = genericEncode options

-- | Constructs UpdateDetectorRequest from required parameters
newUpdateDetectorRequest :: String -> UpdateDetectorRequest
newUpdateDetectorRequest _DetectorId = UpdateDetectorRequest { "DetectorId": _DetectorId, "Enable": Nothing }

-- | Constructs UpdateDetectorRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateDetectorRequest' :: String -> ( { "DetectorId" :: (String) , "Enable" :: Maybe (Enable) } -> {"DetectorId" :: (String) , "Enable" :: Maybe (Enable) } ) -> UpdateDetectorRequest
newUpdateDetectorRequest' _DetectorId customize = (UpdateDetectorRequest <<< customize) { "DetectorId": _DetectorId, "Enable": Nothing }



newtype UpdateDetectorResponse = UpdateDetectorResponse Types.NoArguments
derive instance newtypeUpdateDetectorResponse :: Newtype UpdateDetectorResponse _
derive instance repGenericUpdateDetectorResponse :: Generic UpdateDetectorResponse _
instance showUpdateDetectorResponse :: Show UpdateDetectorResponse where show = genericShow
instance decodeUpdateDetectorResponse :: Decode UpdateDetectorResponse where decode = genericDecode options
instance encodeUpdateDetectorResponse :: Encode UpdateDetectorResponse where encode = genericEncode options



-- | UpdateFindingsFeedback request body.
newtype UpdateFindingsFeedbackRequest = UpdateFindingsFeedbackRequest 
  { "Comments" :: Maybe (Comments)
  , "DetectorId" :: (String)
  , "Feedback" :: Maybe (Feedback)
  , "FindingIds" :: Maybe (FindingIds)
  }
derive instance newtypeUpdateFindingsFeedbackRequest :: Newtype UpdateFindingsFeedbackRequest _
derive instance repGenericUpdateFindingsFeedbackRequest :: Generic UpdateFindingsFeedbackRequest _
instance showUpdateFindingsFeedbackRequest :: Show UpdateFindingsFeedbackRequest where show = genericShow
instance decodeUpdateFindingsFeedbackRequest :: Decode UpdateFindingsFeedbackRequest where decode = genericDecode options
instance encodeUpdateFindingsFeedbackRequest :: Encode UpdateFindingsFeedbackRequest where encode = genericEncode options

-- | Constructs UpdateFindingsFeedbackRequest from required parameters
newUpdateFindingsFeedbackRequest :: String -> UpdateFindingsFeedbackRequest
newUpdateFindingsFeedbackRequest _DetectorId = UpdateFindingsFeedbackRequest { "DetectorId": _DetectorId, "Comments": Nothing, "Feedback": Nothing, "FindingIds": Nothing }

-- | Constructs UpdateFindingsFeedbackRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateFindingsFeedbackRequest' :: String -> ( { "Comments" :: Maybe (Comments) , "DetectorId" :: (String) , "Feedback" :: Maybe (Feedback) , "FindingIds" :: Maybe (FindingIds) } -> {"Comments" :: Maybe (Comments) , "DetectorId" :: (String) , "Feedback" :: Maybe (Feedback) , "FindingIds" :: Maybe (FindingIds) } ) -> UpdateFindingsFeedbackRequest
newUpdateFindingsFeedbackRequest' _DetectorId customize = (UpdateFindingsFeedbackRequest <<< customize) { "DetectorId": _DetectorId, "Comments": Nothing, "Feedback": Nothing, "FindingIds": Nothing }



newtype UpdateFindingsFeedbackResponse = UpdateFindingsFeedbackResponse Types.NoArguments
derive instance newtypeUpdateFindingsFeedbackResponse :: Newtype UpdateFindingsFeedbackResponse _
derive instance repGenericUpdateFindingsFeedbackResponse :: Generic UpdateFindingsFeedbackResponse _
instance showUpdateFindingsFeedbackResponse :: Show UpdateFindingsFeedbackResponse where show = genericShow
instance decodeUpdateFindingsFeedbackResponse :: Decode UpdateFindingsFeedbackResponse where decode = genericDecode options
instance encodeUpdateFindingsFeedbackResponse :: Encode UpdateFindingsFeedbackResponse where encode = genericEncode options



-- | UpdateIPSet request body.
newtype UpdateIPSetRequest = UpdateIPSetRequest 
  { "Activate" :: Maybe (Activate)
  , "DetectorId" :: (String)
  , "IpSetId" :: (String)
  , "Location" :: Maybe (Location)
  , "Name" :: Maybe (Name)
  }
derive instance newtypeUpdateIPSetRequest :: Newtype UpdateIPSetRequest _
derive instance repGenericUpdateIPSetRequest :: Generic UpdateIPSetRequest _
instance showUpdateIPSetRequest :: Show UpdateIPSetRequest where show = genericShow
instance decodeUpdateIPSetRequest :: Decode UpdateIPSetRequest where decode = genericDecode options
instance encodeUpdateIPSetRequest :: Encode UpdateIPSetRequest where encode = genericEncode options

-- | Constructs UpdateIPSetRequest from required parameters
newUpdateIPSetRequest :: String -> String -> UpdateIPSetRequest
newUpdateIPSetRequest _DetectorId _IpSetId = UpdateIPSetRequest { "DetectorId": _DetectorId, "IpSetId": _IpSetId, "Activate": Nothing, "Location": Nothing, "Name": Nothing }

-- | Constructs UpdateIPSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateIPSetRequest' :: String -> String -> ( { "Activate" :: Maybe (Activate) , "DetectorId" :: (String) , "IpSetId" :: (String) , "Location" :: Maybe (Location) , "Name" :: Maybe (Name) } -> {"Activate" :: Maybe (Activate) , "DetectorId" :: (String) , "IpSetId" :: (String) , "Location" :: Maybe (Location) , "Name" :: Maybe (Name) } ) -> UpdateIPSetRequest
newUpdateIPSetRequest' _DetectorId _IpSetId customize = (UpdateIPSetRequest <<< customize) { "DetectorId": _DetectorId, "IpSetId": _IpSetId, "Activate": Nothing, "Location": Nothing, "Name": Nothing }



newtype UpdateIPSetResponse = UpdateIPSetResponse Types.NoArguments
derive instance newtypeUpdateIPSetResponse :: Newtype UpdateIPSetResponse _
derive instance repGenericUpdateIPSetResponse :: Generic UpdateIPSetResponse _
instance showUpdateIPSetResponse :: Show UpdateIPSetResponse where show = genericShow
instance decodeUpdateIPSetResponse :: Decode UpdateIPSetResponse where decode = genericDecode options
instance encodeUpdateIPSetResponse :: Encode UpdateIPSetResponse where encode = genericEncode options



-- | UpdateThreatIntelSet request body.
newtype UpdateThreatIntelSetRequest = UpdateThreatIntelSetRequest 
  { "Activate" :: Maybe (Activate)
  , "DetectorId" :: (String)
  , "Location" :: Maybe (Location)
  , "Name" :: Maybe (Name)
  , "ThreatIntelSetId" :: (String)
  }
derive instance newtypeUpdateThreatIntelSetRequest :: Newtype UpdateThreatIntelSetRequest _
derive instance repGenericUpdateThreatIntelSetRequest :: Generic UpdateThreatIntelSetRequest _
instance showUpdateThreatIntelSetRequest :: Show UpdateThreatIntelSetRequest where show = genericShow
instance decodeUpdateThreatIntelSetRequest :: Decode UpdateThreatIntelSetRequest where decode = genericDecode options
instance encodeUpdateThreatIntelSetRequest :: Encode UpdateThreatIntelSetRequest where encode = genericEncode options

-- | Constructs UpdateThreatIntelSetRequest from required parameters
newUpdateThreatIntelSetRequest :: String -> String -> UpdateThreatIntelSetRequest
newUpdateThreatIntelSetRequest _DetectorId _ThreatIntelSetId = UpdateThreatIntelSetRequest { "DetectorId": _DetectorId, "ThreatIntelSetId": _ThreatIntelSetId, "Activate": Nothing, "Location": Nothing, "Name": Nothing }

-- | Constructs UpdateThreatIntelSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateThreatIntelSetRequest' :: String -> String -> ( { "Activate" :: Maybe (Activate) , "DetectorId" :: (String) , "Location" :: Maybe (Location) , "Name" :: Maybe (Name) , "ThreatIntelSetId" :: (String) } -> {"Activate" :: Maybe (Activate) , "DetectorId" :: (String) , "Location" :: Maybe (Location) , "Name" :: Maybe (Name) , "ThreatIntelSetId" :: (String) } ) -> UpdateThreatIntelSetRequest
newUpdateThreatIntelSetRequest' _DetectorId _ThreatIntelSetId customize = (UpdateThreatIntelSetRequest <<< customize) { "DetectorId": _DetectorId, "ThreatIntelSetId": _ThreatIntelSetId, "Activate": Nothing, "Location": Nothing, "Name": Nothing }



newtype UpdateThreatIntelSetResponse = UpdateThreatIntelSetResponse Types.NoArguments
derive instance newtypeUpdateThreatIntelSetResponse :: Newtype UpdateThreatIntelSetResponse _
derive instance repGenericUpdateThreatIntelSetResponse :: Generic UpdateThreatIntelSetResponse _
instance showUpdateThreatIntelSetResponse :: Show UpdateThreatIntelSetResponse where show = genericShow
instance decodeUpdateThreatIntelSetResponse :: Decode UpdateThreatIntelSetResponse where decode = genericDecode options
instance encodeUpdateThreatIntelSetResponse :: Encode UpdateThreatIntelSetResponse where encode = genericEncode options



-- | The first time a resource was created. The format will be ISO-8601.
newtype UpdatedAt = UpdatedAt String
derive instance newtypeUpdatedAt :: Newtype UpdatedAt _
derive instance repGenericUpdatedAt :: Generic UpdatedAt _
instance showUpdatedAt :: Show UpdatedAt where show = genericShow
instance decodeUpdatedAt :: Decode UpdatedAt where decode = genericDecode options
instance encodeUpdatedAt :: Encode UpdatedAt where encode = genericEncode options

