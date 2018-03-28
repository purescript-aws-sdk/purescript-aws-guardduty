
module AWS.GuardDuty.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
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
  , "InvitationId" :: NullOrUndefined (InvitationId)
  , "MasterId" :: NullOrUndefined (MasterId)
  }
derive instance newtypeAcceptInvitationRequest :: Newtype AcceptInvitationRequest _
derive instance repGenericAcceptInvitationRequest :: Generic AcceptInvitationRequest _
instance showAcceptInvitationRequest :: Show AcceptInvitationRequest where show = genericShow
instance decodeAcceptInvitationRequest :: Decode AcceptInvitationRequest where decode = genericDecode options
instance encodeAcceptInvitationRequest :: Encode AcceptInvitationRequest where encode = genericEncode options

-- | Constructs AcceptInvitationRequest from required parameters
newAcceptInvitationRequest :: String -> AcceptInvitationRequest
newAcceptInvitationRequest _DetectorId = AcceptInvitationRequest { "DetectorId": _DetectorId, "InvitationId": (NullOrUndefined Nothing), "MasterId": (NullOrUndefined Nothing) }

-- | Constructs AcceptInvitationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAcceptInvitationRequest' :: String -> ( { "DetectorId" :: (String) , "InvitationId" :: NullOrUndefined (InvitationId) , "MasterId" :: NullOrUndefined (MasterId) } -> {"DetectorId" :: (String) , "InvitationId" :: NullOrUndefined (InvitationId) , "MasterId" :: NullOrUndefined (MasterId) } ) -> AcceptInvitationRequest
newAcceptInvitationRequest' _DetectorId customize = (AcceptInvitationRequest <<< customize) { "DetectorId": _DetectorId, "InvitationId": (NullOrUndefined Nothing), "MasterId": (NullOrUndefined Nothing) }



newtype AcceptInvitationResponse = AcceptInvitationResponse Types.NoArguments
derive instance newtypeAcceptInvitationResponse :: Newtype AcceptInvitationResponse _
derive instance repGenericAcceptInvitationResponse :: Generic AcceptInvitationResponse _
instance showAcceptInvitationResponse :: Show AcceptInvitationResponse where show = genericShow
instance decodeAcceptInvitationResponse :: Decode AcceptInvitationResponse where decode = genericDecode options
instance encodeAcceptInvitationResponse :: Encode AcceptInvitationResponse where encode = genericEncode options



-- | The IAM access key details (IAM user information) of a user that engaged in the activity that prompted GuardDuty to generate a finding.
newtype AccessKeyDetails = AccessKeyDetails 
  { "AccessKeyId" :: NullOrUndefined (String)
  , "PrincipalId" :: NullOrUndefined (String)
  , "UserName" :: NullOrUndefined (String)
  , "UserType" :: NullOrUndefined (String)
  }
derive instance newtypeAccessKeyDetails :: Newtype AccessKeyDetails _
derive instance repGenericAccessKeyDetails :: Generic AccessKeyDetails _
instance showAccessKeyDetails :: Show AccessKeyDetails where show = genericShow
instance decodeAccessKeyDetails :: Decode AccessKeyDetails where decode = genericDecode options
instance encodeAccessKeyDetails :: Encode AccessKeyDetails where encode = genericEncode options

-- | Constructs AccessKeyDetails from required parameters
newAccessKeyDetails :: AccessKeyDetails
newAccessKeyDetails  = AccessKeyDetails { "AccessKeyId": (NullOrUndefined Nothing), "PrincipalId": (NullOrUndefined Nothing), "UserName": (NullOrUndefined Nothing), "UserType": (NullOrUndefined Nothing) }

-- | Constructs AccessKeyDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccessKeyDetails' :: ( { "AccessKeyId" :: NullOrUndefined (String) , "PrincipalId" :: NullOrUndefined (String) , "UserName" :: NullOrUndefined (String) , "UserType" :: NullOrUndefined (String) } -> {"AccessKeyId" :: NullOrUndefined (String) , "PrincipalId" :: NullOrUndefined (String) , "UserName" :: NullOrUndefined (String) , "UserType" :: NullOrUndefined (String) } ) -> AccessKeyDetails
newAccessKeyDetails'  customize = (AccessKeyDetails <<< customize) { "AccessKeyId": (NullOrUndefined Nothing), "PrincipalId": (NullOrUndefined Nothing), "UserName": (NullOrUndefined Nothing), "UserType": (NullOrUndefined Nothing) }



-- | An object containing the member's accountId and email address.
newtype AccountDetail = AccountDetail 
  { "AccountId" :: NullOrUndefined (AccountId)
  , "Email" :: NullOrUndefined (Email)
  }
derive instance newtypeAccountDetail :: Newtype AccountDetail _
derive instance repGenericAccountDetail :: Generic AccountDetail _
instance showAccountDetail :: Show AccountDetail where show = genericShow
instance decodeAccountDetail :: Decode AccountDetail where decode = genericDecode options
instance encodeAccountDetail :: Encode AccountDetail where encode = genericEncode options

-- | Constructs AccountDetail from required parameters
newAccountDetail :: AccountDetail
newAccountDetail  = AccountDetail { "AccountId": (NullOrUndefined Nothing), "Email": (NullOrUndefined Nothing) }

-- | Constructs AccountDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccountDetail' :: ( { "AccountId" :: NullOrUndefined (AccountId) , "Email" :: NullOrUndefined (Email) } -> {"AccountId" :: NullOrUndefined (AccountId) , "Email" :: NullOrUndefined (Email) } ) -> AccountDetail
newAccountDetail'  customize = (AccountDetail <<< customize) { "AccountId": (NullOrUndefined Nothing), "Email": (NullOrUndefined Nothing) }



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
  { "ActionType" :: NullOrUndefined (String)
  , "AwsApiCallAction" :: NullOrUndefined (AwsApiCallAction)
  , "DnsRequestAction" :: NullOrUndefined (DnsRequestAction)
  , "NetworkConnectionAction" :: NullOrUndefined (NetworkConnectionAction)
  , "PortProbeAction" :: NullOrUndefined (PortProbeAction)
  }
derive instance newtypeAction :: Newtype Action _
derive instance repGenericAction :: Generic Action _
instance showAction :: Show Action where show = genericShow
instance decodeAction :: Decode Action where decode = genericDecode options
instance encodeAction :: Encode Action where encode = genericEncode options

-- | Constructs Action from required parameters
newAction :: Action
newAction  = Action { "ActionType": (NullOrUndefined Nothing), "AwsApiCallAction": (NullOrUndefined Nothing), "DnsRequestAction": (NullOrUndefined Nothing), "NetworkConnectionAction": (NullOrUndefined Nothing), "PortProbeAction": (NullOrUndefined Nothing) }

-- | Constructs Action's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAction' :: ( { "ActionType" :: NullOrUndefined (String) , "AwsApiCallAction" :: NullOrUndefined (AwsApiCallAction) , "DnsRequestAction" :: NullOrUndefined (DnsRequestAction) , "NetworkConnectionAction" :: NullOrUndefined (NetworkConnectionAction) , "PortProbeAction" :: NullOrUndefined (PortProbeAction) } -> {"ActionType" :: NullOrUndefined (String) , "AwsApiCallAction" :: NullOrUndefined (AwsApiCallAction) , "DnsRequestAction" :: NullOrUndefined (DnsRequestAction) , "NetworkConnectionAction" :: NullOrUndefined (NetworkConnectionAction) , "PortProbeAction" :: NullOrUndefined (PortProbeAction) } ) -> Action
newAction'  customize = (Action <<< customize) { "ActionType": (NullOrUndefined Nothing), "AwsApiCallAction": (NullOrUndefined Nothing), "DnsRequestAction": (NullOrUndefined Nothing), "NetworkConnectionAction": (NullOrUndefined Nothing), "PortProbeAction": (NullOrUndefined Nothing) }



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
  , "FindingIds" :: NullOrUndefined (FindingIds)
  }
derive instance newtypeArchiveFindingsRequest :: Newtype ArchiveFindingsRequest _
derive instance repGenericArchiveFindingsRequest :: Generic ArchiveFindingsRequest _
instance showArchiveFindingsRequest :: Show ArchiveFindingsRequest where show = genericShow
instance decodeArchiveFindingsRequest :: Decode ArchiveFindingsRequest where decode = genericDecode options
instance encodeArchiveFindingsRequest :: Encode ArchiveFindingsRequest where encode = genericEncode options

-- | Constructs ArchiveFindingsRequest from required parameters
newArchiveFindingsRequest :: String -> ArchiveFindingsRequest
newArchiveFindingsRequest _DetectorId = ArchiveFindingsRequest { "DetectorId": _DetectorId, "FindingIds": (NullOrUndefined Nothing) }

-- | Constructs ArchiveFindingsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newArchiveFindingsRequest' :: String -> ( { "DetectorId" :: (String) , "FindingIds" :: NullOrUndefined (FindingIds) } -> {"DetectorId" :: (String) , "FindingIds" :: NullOrUndefined (FindingIds) } ) -> ArchiveFindingsRequest
newArchiveFindingsRequest' _DetectorId customize = (ArchiveFindingsRequest <<< customize) { "DetectorId": _DetectorId, "FindingIds": (NullOrUndefined Nothing) }



newtype ArchiveFindingsResponse = ArchiveFindingsResponse Types.NoArguments
derive instance newtypeArchiveFindingsResponse :: Newtype ArchiveFindingsResponse _
derive instance repGenericArchiveFindingsResponse :: Generic ArchiveFindingsResponse _
instance showArchiveFindingsResponse :: Show ArchiveFindingsResponse where show = genericShow
instance decodeArchiveFindingsResponse :: Decode ArchiveFindingsResponse where decode = genericDecode options
instance encodeArchiveFindingsResponse :: Encode ArchiveFindingsResponse where encode = genericEncode options



-- | Information about the AWS_API_CALL action described in this finding.
newtype AwsApiCallAction = AwsApiCallAction 
  { "Api" :: NullOrUndefined (String)
  , "CallerType" :: NullOrUndefined (String)
  , "DomainDetails" :: NullOrUndefined (DomainDetails)
  , "RemoteIpDetails" :: NullOrUndefined (RemoteIpDetails)
  , "ServiceName" :: NullOrUndefined (String)
  }
derive instance newtypeAwsApiCallAction :: Newtype AwsApiCallAction _
derive instance repGenericAwsApiCallAction :: Generic AwsApiCallAction _
instance showAwsApiCallAction :: Show AwsApiCallAction where show = genericShow
instance decodeAwsApiCallAction :: Decode AwsApiCallAction where decode = genericDecode options
instance encodeAwsApiCallAction :: Encode AwsApiCallAction where encode = genericEncode options

-- | Constructs AwsApiCallAction from required parameters
newAwsApiCallAction :: AwsApiCallAction
newAwsApiCallAction  = AwsApiCallAction { "Api": (NullOrUndefined Nothing), "CallerType": (NullOrUndefined Nothing), "DomainDetails": (NullOrUndefined Nothing), "RemoteIpDetails": (NullOrUndefined Nothing), "ServiceName": (NullOrUndefined Nothing) }

-- | Constructs AwsApiCallAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAwsApiCallAction' :: ( { "Api" :: NullOrUndefined (String) , "CallerType" :: NullOrUndefined (String) , "DomainDetails" :: NullOrUndefined (DomainDetails) , "RemoteIpDetails" :: NullOrUndefined (RemoteIpDetails) , "ServiceName" :: NullOrUndefined (String) } -> {"Api" :: NullOrUndefined (String) , "CallerType" :: NullOrUndefined (String) , "DomainDetails" :: NullOrUndefined (DomainDetails) , "RemoteIpDetails" :: NullOrUndefined (RemoteIpDetails) , "ServiceName" :: NullOrUndefined (String) } ) -> AwsApiCallAction
newAwsApiCallAction'  customize = (AwsApiCallAction <<< customize) { "Api": (NullOrUndefined Nothing), "CallerType": (NullOrUndefined Nothing), "DomainDetails": (NullOrUndefined Nothing), "RemoteIpDetails": (NullOrUndefined Nothing), "ServiceName": (NullOrUndefined Nothing) }



-- | Error response object.
newtype BadRequestException = BadRequestException 
  { "Message" :: NullOrUndefined (String)
  , "Type" :: NullOrUndefined (String)
  }
derive instance newtypeBadRequestException :: Newtype BadRequestException _
derive instance repGenericBadRequestException :: Generic BadRequestException _
instance showBadRequestException :: Show BadRequestException where show = genericShow
instance decodeBadRequestException :: Decode BadRequestException where decode = genericDecode options
instance encodeBadRequestException :: Encode BadRequestException where encode = genericEncode options

-- | Constructs BadRequestException from required parameters
newBadRequestException :: BadRequestException
newBadRequestException  = BadRequestException { "Message": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs BadRequestException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBadRequestException' :: ( { "Message" :: NullOrUndefined (String) , "Type" :: NullOrUndefined (String) } -> {"Message" :: NullOrUndefined (String) , "Type" :: NullOrUndefined (String) } ) -> BadRequestException
newBadRequestException'  customize = (BadRequestException <<< customize) { "Message": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



-- | City information of the remote IP address.
newtype City = City 
  { "CityName" :: NullOrUndefined (String)
  }
derive instance newtypeCity :: Newtype City _
derive instance repGenericCity :: Generic City _
instance showCity :: Show City where show = genericShow
instance decodeCity :: Decode City where decode = genericDecode options
instance encodeCity :: Encode City where encode = genericEncode options

-- | Constructs City from required parameters
newCity :: City
newCity  = City { "CityName": (NullOrUndefined Nothing) }

-- | Constructs City's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCity' :: ( { "CityName" :: NullOrUndefined (String) } -> {"CityName" :: NullOrUndefined (String) } ) -> City
newCity'  customize = (City <<< customize) { "CityName": (NullOrUndefined Nothing) }



-- | Additional feedback about the GuardDuty findings.
newtype Comments = Comments String
derive instance newtypeComments :: Newtype Comments _
derive instance repGenericComments :: Generic Comments _
instance showComments :: Show Comments where show = genericShow
instance decodeComments :: Decode Comments where decode = genericDecode options
instance encodeComments :: Encode Comments where encode = genericEncode options



-- | Finding attribute (for example, accountId) for which conditions and values must be specified when querying findings.
newtype Condition = Condition 
  { "Eq" :: NullOrUndefined (Eq)
  , "Gt" :: NullOrUndefined (Int)
  , "Gte" :: NullOrUndefined (Int)
  , "Lt" :: NullOrUndefined (Int)
  , "Lte" :: NullOrUndefined (Int)
  , "Neq" :: NullOrUndefined (Neq)
  }
derive instance newtypeCondition :: Newtype Condition _
derive instance repGenericCondition :: Generic Condition _
instance showCondition :: Show Condition where show = genericShow
instance decodeCondition :: Decode Condition where decode = genericDecode options
instance encodeCondition :: Encode Condition where encode = genericEncode options

-- | Constructs Condition from required parameters
newCondition :: Condition
newCondition  = Condition { "Eq": (NullOrUndefined Nothing), "Gt": (NullOrUndefined Nothing), "Gte": (NullOrUndefined Nothing), "Lt": (NullOrUndefined Nothing), "Lte": (NullOrUndefined Nothing), "Neq": (NullOrUndefined Nothing) }

-- | Constructs Condition's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCondition' :: ( { "Eq" :: NullOrUndefined (Eq) , "Gt" :: NullOrUndefined (Int) , "Gte" :: NullOrUndefined (Int) , "Lt" :: NullOrUndefined (Int) , "Lte" :: NullOrUndefined (Int) , "Neq" :: NullOrUndefined (Neq) } -> {"Eq" :: NullOrUndefined (Eq) , "Gt" :: NullOrUndefined (Int) , "Gte" :: NullOrUndefined (Int) , "Lt" :: NullOrUndefined (Int) , "Lte" :: NullOrUndefined (Int) , "Neq" :: NullOrUndefined (Neq) } ) -> Condition
newCondition'  customize = (Condition <<< customize) { "Eq": (NullOrUndefined Nothing), "Gt": (NullOrUndefined Nothing), "Gte": (NullOrUndefined Nothing), "Lt": (NullOrUndefined Nothing), "Lte": (NullOrUndefined Nothing), "Neq": (NullOrUndefined Nothing) }



-- | The count of findings for the given severity.
newtype CountBySeverityFindingStatistic = CountBySeverityFindingStatistic Int
derive instance newtypeCountBySeverityFindingStatistic :: Newtype CountBySeverityFindingStatistic _
derive instance repGenericCountBySeverityFindingStatistic :: Generic CountBySeverityFindingStatistic _
instance showCountBySeverityFindingStatistic :: Show CountBySeverityFindingStatistic where show = genericShow
instance decodeCountBySeverityFindingStatistic :: Decode CountBySeverityFindingStatistic where decode = genericDecode options
instance encodeCountBySeverityFindingStatistic :: Encode CountBySeverityFindingStatistic where encode = genericEncode options



-- | Country information of the remote IP address.
newtype Country = Country 
  { "CountryCode" :: NullOrUndefined (String)
  , "CountryName" :: NullOrUndefined (String)
  }
derive instance newtypeCountry :: Newtype Country _
derive instance repGenericCountry :: Generic Country _
instance showCountry :: Show Country where show = genericShow
instance decodeCountry :: Decode Country where decode = genericDecode options
instance encodeCountry :: Encode Country where encode = genericEncode options

-- | Constructs Country from required parameters
newCountry :: Country
newCountry  = Country { "CountryCode": (NullOrUndefined Nothing), "CountryName": (NullOrUndefined Nothing) }

-- | Constructs Country's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCountry' :: ( { "CountryCode" :: NullOrUndefined (String) , "CountryName" :: NullOrUndefined (String) } -> {"CountryCode" :: NullOrUndefined (String) , "CountryName" :: NullOrUndefined (String) } ) -> Country
newCountry'  customize = (Country <<< customize) { "CountryCode": (NullOrUndefined Nothing), "CountryName": (NullOrUndefined Nothing) }



-- | CreateDetector request body.
newtype CreateDetectorRequest = CreateDetectorRequest 
  { "Enable" :: NullOrUndefined (Enable)
  }
derive instance newtypeCreateDetectorRequest :: Newtype CreateDetectorRequest _
derive instance repGenericCreateDetectorRequest :: Generic CreateDetectorRequest _
instance showCreateDetectorRequest :: Show CreateDetectorRequest where show = genericShow
instance decodeCreateDetectorRequest :: Decode CreateDetectorRequest where decode = genericDecode options
instance encodeCreateDetectorRequest :: Encode CreateDetectorRequest where encode = genericEncode options

-- | Constructs CreateDetectorRequest from required parameters
newCreateDetectorRequest :: CreateDetectorRequest
newCreateDetectorRequest  = CreateDetectorRequest { "Enable": (NullOrUndefined Nothing) }

-- | Constructs CreateDetectorRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateDetectorRequest' :: ( { "Enable" :: NullOrUndefined (Enable) } -> {"Enable" :: NullOrUndefined (Enable) } ) -> CreateDetectorRequest
newCreateDetectorRequest'  customize = (CreateDetectorRequest <<< customize) { "Enable": (NullOrUndefined Nothing) }



newtype CreateDetectorResponse = CreateDetectorResponse 
  { "DetectorId" :: NullOrUndefined (DetectorId)
  }
derive instance newtypeCreateDetectorResponse :: Newtype CreateDetectorResponse _
derive instance repGenericCreateDetectorResponse :: Generic CreateDetectorResponse _
instance showCreateDetectorResponse :: Show CreateDetectorResponse where show = genericShow
instance decodeCreateDetectorResponse :: Decode CreateDetectorResponse where decode = genericDecode options
instance encodeCreateDetectorResponse :: Encode CreateDetectorResponse where encode = genericEncode options

-- | Constructs CreateDetectorResponse from required parameters
newCreateDetectorResponse :: CreateDetectorResponse
newCreateDetectorResponse  = CreateDetectorResponse { "DetectorId": (NullOrUndefined Nothing) }

-- | Constructs CreateDetectorResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateDetectorResponse' :: ( { "DetectorId" :: NullOrUndefined (DetectorId) } -> {"DetectorId" :: NullOrUndefined (DetectorId) } ) -> CreateDetectorResponse
newCreateDetectorResponse'  customize = (CreateDetectorResponse <<< customize) { "DetectorId": (NullOrUndefined Nothing) }



-- | CreateIPSet request body.
newtype CreateIPSetRequest = CreateIPSetRequest 
  { "Activate" :: NullOrUndefined (Activate)
  , "DetectorId" :: (String)
  , "Format" :: NullOrUndefined (IpSetFormat)
  , "Location" :: NullOrUndefined (Location)
  , "Name" :: NullOrUndefined (Name)
  }
derive instance newtypeCreateIPSetRequest :: Newtype CreateIPSetRequest _
derive instance repGenericCreateIPSetRequest :: Generic CreateIPSetRequest _
instance showCreateIPSetRequest :: Show CreateIPSetRequest where show = genericShow
instance decodeCreateIPSetRequest :: Decode CreateIPSetRequest where decode = genericDecode options
instance encodeCreateIPSetRequest :: Encode CreateIPSetRequest where encode = genericEncode options

-- | Constructs CreateIPSetRequest from required parameters
newCreateIPSetRequest :: String -> CreateIPSetRequest
newCreateIPSetRequest _DetectorId = CreateIPSetRequest { "DetectorId": _DetectorId, "Activate": (NullOrUndefined Nothing), "Format": (NullOrUndefined Nothing), "Location": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing) }

-- | Constructs CreateIPSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateIPSetRequest' :: String -> ( { "Activate" :: NullOrUndefined (Activate) , "DetectorId" :: (String) , "Format" :: NullOrUndefined (IpSetFormat) , "Location" :: NullOrUndefined (Location) , "Name" :: NullOrUndefined (Name) } -> {"Activate" :: NullOrUndefined (Activate) , "DetectorId" :: (String) , "Format" :: NullOrUndefined (IpSetFormat) , "Location" :: NullOrUndefined (Location) , "Name" :: NullOrUndefined (Name) } ) -> CreateIPSetRequest
newCreateIPSetRequest' _DetectorId customize = (CreateIPSetRequest <<< customize) { "DetectorId": _DetectorId, "Activate": (NullOrUndefined Nothing), "Format": (NullOrUndefined Nothing), "Location": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing) }



newtype CreateIPSetResponse = CreateIPSetResponse 
  { "IpSetId" :: NullOrUndefined (IpSetId)
  }
derive instance newtypeCreateIPSetResponse :: Newtype CreateIPSetResponse _
derive instance repGenericCreateIPSetResponse :: Generic CreateIPSetResponse _
instance showCreateIPSetResponse :: Show CreateIPSetResponse where show = genericShow
instance decodeCreateIPSetResponse :: Decode CreateIPSetResponse where decode = genericDecode options
instance encodeCreateIPSetResponse :: Encode CreateIPSetResponse where encode = genericEncode options

-- | Constructs CreateIPSetResponse from required parameters
newCreateIPSetResponse :: CreateIPSetResponse
newCreateIPSetResponse  = CreateIPSetResponse { "IpSetId": (NullOrUndefined Nothing) }

-- | Constructs CreateIPSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateIPSetResponse' :: ( { "IpSetId" :: NullOrUndefined (IpSetId) } -> {"IpSetId" :: NullOrUndefined (IpSetId) } ) -> CreateIPSetResponse
newCreateIPSetResponse'  customize = (CreateIPSetResponse <<< customize) { "IpSetId": (NullOrUndefined Nothing) }



-- | CreateMembers request body.
newtype CreateMembersRequest = CreateMembersRequest 
  { "AccountDetails" :: NullOrUndefined (AccountDetails)
  , "DetectorId" :: (String)
  }
derive instance newtypeCreateMembersRequest :: Newtype CreateMembersRequest _
derive instance repGenericCreateMembersRequest :: Generic CreateMembersRequest _
instance showCreateMembersRequest :: Show CreateMembersRequest where show = genericShow
instance decodeCreateMembersRequest :: Decode CreateMembersRequest where decode = genericDecode options
instance encodeCreateMembersRequest :: Encode CreateMembersRequest where encode = genericEncode options

-- | Constructs CreateMembersRequest from required parameters
newCreateMembersRequest :: String -> CreateMembersRequest
newCreateMembersRequest _DetectorId = CreateMembersRequest { "DetectorId": _DetectorId, "AccountDetails": (NullOrUndefined Nothing) }

-- | Constructs CreateMembersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateMembersRequest' :: String -> ( { "AccountDetails" :: NullOrUndefined (AccountDetails) , "DetectorId" :: (String) } -> {"AccountDetails" :: NullOrUndefined (AccountDetails) , "DetectorId" :: (String) } ) -> CreateMembersRequest
newCreateMembersRequest' _DetectorId customize = (CreateMembersRequest <<< customize) { "DetectorId": _DetectorId, "AccountDetails": (NullOrUndefined Nothing) }



newtype CreateMembersResponse = CreateMembersResponse 
  { "UnprocessedAccounts" :: NullOrUndefined (UnprocessedAccounts)
  }
derive instance newtypeCreateMembersResponse :: Newtype CreateMembersResponse _
derive instance repGenericCreateMembersResponse :: Generic CreateMembersResponse _
instance showCreateMembersResponse :: Show CreateMembersResponse where show = genericShow
instance decodeCreateMembersResponse :: Decode CreateMembersResponse where decode = genericDecode options
instance encodeCreateMembersResponse :: Encode CreateMembersResponse where encode = genericEncode options

-- | Constructs CreateMembersResponse from required parameters
newCreateMembersResponse :: CreateMembersResponse
newCreateMembersResponse  = CreateMembersResponse { "UnprocessedAccounts": (NullOrUndefined Nothing) }

-- | Constructs CreateMembersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateMembersResponse' :: ( { "UnprocessedAccounts" :: NullOrUndefined (UnprocessedAccounts) } -> {"UnprocessedAccounts" :: NullOrUndefined (UnprocessedAccounts) } ) -> CreateMembersResponse
newCreateMembersResponse'  customize = (CreateMembersResponse <<< customize) { "UnprocessedAccounts": (NullOrUndefined Nothing) }



-- | CreateSampleFindings request body.
newtype CreateSampleFindingsRequest = CreateSampleFindingsRequest 
  { "DetectorId" :: (String)
  , "FindingTypes" :: NullOrUndefined (FindingTypes)
  }
derive instance newtypeCreateSampleFindingsRequest :: Newtype CreateSampleFindingsRequest _
derive instance repGenericCreateSampleFindingsRequest :: Generic CreateSampleFindingsRequest _
instance showCreateSampleFindingsRequest :: Show CreateSampleFindingsRequest where show = genericShow
instance decodeCreateSampleFindingsRequest :: Decode CreateSampleFindingsRequest where decode = genericDecode options
instance encodeCreateSampleFindingsRequest :: Encode CreateSampleFindingsRequest where encode = genericEncode options

-- | Constructs CreateSampleFindingsRequest from required parameters
newCreateSampleFindingsRequest :: String -> CreateSampleFindingsRequest
newCreateSampleFindingsRequest _DetectorId = CreateSampleFindingsRequest { "DetectorId": _DetectorId, "FindingTypes": (NullOrUndefined Nothing) }

-- | Constructs CreateSampleFindingsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateSampleFindingsRequest' :: String -> ( { "DetectorId" :: (String) , "FindingTypes" :: NullOrUndefined (FindingTypes) } -> {"DetectorId" :: (String) , "FindingTypes" :: NullOrUndefined (FindingTypes) } ) -> CreateSampleFindingsRequest
newCreateSampleFindingsRequest' _DetectorId customize = (CreateSampleFindingsRequest <<< customize) { "DetectorId": _DetectorId, "FindingTypes": (NullOrUndefined Nothing) }



newtype CreateSampleFindingsResponse = CreateSampleFindingsResponse Types.NoArguments
derive instance newtypeCreateSampleFindingsResponse :: Newtype CreateSampleFindingsResponse _
derive instance repGenericCreateSampleFindingsResponse :: Generic CreateSampleFindingsResponse _
instance showCreateSampleFindingsResponse :: Show CreateSampleFindingsResponse where show = genericShow
instance decodeCreateSampleFindingsResponse :: Decode CreateSampleFindingsResponse where decode = genericDecode options
instance encodeCreateSampleFindingsResponse :: Encode CreateSampleFindingsResponse where encode = genericEncode options



-- | CreateThreatIntelSet request body.
newtype CreateThreatIntelSetRequest = CreateThreatIntelSetRequest 
  { "Activate" :: NullOrUndefined (Activate)
  , "DetectorId" :: (String)
  , "Format" :: NullOrUndefined (ThreatIntelSetFormat)
  , "Location" :: NullOrUndefined (Location)
  , "Name" :: NullOrUndefined (Name)
  }
derive instance newtypeCreateThreatIntelSetRequest :: Newtype CreateThreatIntelSetRequest _
derive instance repGenericCreateThreatIntelSetRequest :: Generic CreateThreatIntelSetRequest _
instance showCreateThreatIntelSetRequest :: Show CreateThreatIntelSetRequest where show = genericShow
instance decodeCreateThreatIntelSetRequest :: Decode CreateThreatIntelSetRequest where decode = genericDecode options
instance encodeCreateThreatIntelSetRequest :: Encode CreateThreatIntelSetRequest where encode = genericEncode options

-- | Constructs CreateThreatIntelSetRequest from required parameters
newCreateThreatIntelSetRequest :: String -> CreateThreatIntelSetRequest
newCreateThreatIntelSetRequest _DetectorId = CreateThreatIntelSetRequest { "DetectorId": _DetectorId, "Activate": (NullOrUndefined Nothing), "Format": (NullOrUndefined Nothing), "Location": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing) }

-- | Constructs CreateThreatIntelSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateThreatIntelSetRequest' :: String -> ( { "Activate" :: NullOrUndefined (Activate) , "DetectorId" :: (String) , "Format" :: NullOrUndefined (ThreatIntelSetFormat) , "Location" :: NullOrUndefined (Location) , "Name" :: NullOrUndefined (Name) } -> {"Activate" :: NullOrUndefined (Activate) , "DetectorId" :: (String) , "Format" :: NullOrUndefined (ThreatIntelSetFormat) , "Location" :: NullOrUndefined (Location) , "Name" :: NullOrUndefined (Name) } ) -> CreateThreatIntelSetRequest
newCreateThreatIntelSetRequest' _DetectorId customize = (CreateThreatIntelSetRequest <<< customize) { "DetectorId": _DetectorId, "Activate": (NullOrUndefined Nothing), "Format": (NullOrUndefined Nothing), "Location": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing) }



newtype CreateThreatIntelSetResponse = CreateThreatIntelSetResponse 
  { "ThreatIntelSetId" :: NullOrUndefined (ThreatIntelSetId)
  }
derive instance newtypeCreateThreatIntelSetResponse :: Newtype CreateThreatIntelSetResponse _
derive instance repGenericCreateThreatIntelSetResponse :: Generic CreateThreatIntelSetResponse _
instance showCreateThreatIntelSetResponse :: Show CreateThreatIntelSetResponse where show = genericShow
instance decodeCreateThreatIntelSetResponse :: Decode CreateThreatIntelSetResponse where decode = genericDecode options
instance encodeCreateThreatIntelSetResponse :: Encode CreateThreatIntelSetResponse where encode = genericEncode options

-- | Constructs CreateThreatIntelSetResponse from required parameters
newCreateThreatIntelSetResponse :: CreateThreatIntelSetResponse
newCreateThreatIntelSetResponse  = CreateThreatIntelSetResponse { "ThreatIntelSetId": (NullOrUndefined Nothing) }

-- | Constructs CreateThreatIntelSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateThreatIntelSetResponse' :: ( { "ThreatIntelSetId" :: NullOrUndefined (ThreatIntelSetId) } -> {"ThreatIntelSetId" :: NullOrUndefined (ThreatIntelSetId) } ) -> CreateThreatIntelSetResponse
newCreateThreatIntelSetResponse'  customize = (CreateThreatIntelSetResponse <<< customize) { "ThreatIntelSetId": (NullOrUndefined Nothing) }



-- | The first time a resource was created. The format will be ISO-8601.
newtype CreatedAt = CreatedAt String
derive instance newtypeCreatedAt :: Newtype CreatedAt _
derive instance repGenericCreatedAt :: Generic CreatedAt _
instance showCreatedAt :: Show CreatedAt where show = genericShow
instance decodeCreatedAt :: Decode CreatedAt where decode = genericDecode options
instance encodeCreatedAt :: Encode CreatedAt where encode = genericEncode options



-- | DeclineInvitations request body.
newtype DeclineInvitationsRequest = DeclineInvitationsRequest 
  { "AccountIds" :: NullOrUndefined (AccountIds)
  }
derive instance newtypeDeclineInvitationsRequest :: Newtype DeclineInvitationsRequest _
derive instance repGenericDeclineInvitationsRequest :: Generic DeclineInvitationsRequest _
instance showDeclineInvitationsRequest :: Show DeclineInvitationsRequest where show = genericShow
instance decodeDeclineInvitationsRequest :: Decode DeclineInvitationsRequest where decode = genericDecode options
instance encodeDeclineInvitationsRequest :: Encode DeclineInvitationsRequest where encode = genericEncode options

-- | Constructs DeclineInvitationsRequest from required parameters
newDeclineInvitationsRequest :: DeclineInvitationsRequest
newDeclineInvitationsRequest  = DeclineInvitationsRequest { "AccountIds": (NullOrUndefined Nothing) }

-- | Constructs DeclineInvitationsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeclineInvitationsRequest' :: ( { "AccountIds" :: NullOrUndefined (AccountIds) } -> {"AccountIds" :: NullOrUndefined (AccountIds) } ) -> DeclineInvitationsRequest
newDeclineInvitationsRequest'  customize = (DeclineInvitationsRequest <<< customize) { "AccountIds": (NullOrUndefined Nothing) }



newtype DeclineInvitationsResponse = DeclineInvitationsResponse 
  { "UnprocessedAccounts" :: NullOrUndefined (UnprocessedAccounts)
  }
derive instance newtypeDeclineInvitationsResponse :: Newtype DeclineInvitationsResponse _
derive instance repGenericDeclineInvitationsResponse :: Generic DeclineInvitationsResponse _
instance showDeclineInvitationsResponse :: Show DeclineInvitationsResponse where show = genericShow
instance decodeDeclineInvitationsResponse :: Decode DeclineInvitationsResponse where decode = genericDecode options
instance encodeDeclineInvitationsResponse :: Encode DeclineInvitationsResponse where encode = genericEncode options

-- | Constructs DeclineInvitationsResponse from required parameters
newDeclineInvitationsResponse :: DeclineInvitationsResponse
newDeclineInvitationsResponse  = DeclineInvitationsResponse { "UnprocessedAccounts": (NullOrUndefined Nothing) }

-- | Constructs DeclineInvitationsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeclineInvitationsResponse' :: ( { "UnprocessedAccounts" :: NullOrUndefined (UnprocessedAccounts) } -> {"UnprocessedAccounts" :: NullOrUndefined (UnprocessedAccounts) } ) -> DeclineInvitationsResponse
newDeclineInvitationsResponse'  customize = (DeclineInvitationsResponse <<< customize) { "UnprocessedAccounts": (NullOrUndefined Nothing) }



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
  { "AccountIds" :: NullOrUndefined (AccountIds)
  }
derive instance newtypeDeleteInvitationsRequest :: Newtype DeleteInvitationsRequest _
derive instance repGenericDeleteInvitationsRequest :: Generic DeleteInvitationsRequest _
instance showDeleteInvitationsRequest :: Show DeleteInvitationsRequest where show = genericShow
instance decodeDeleteInvitationsRequest :: Decode DeleteInvitationsRequest where decode = genericDecode options
instance encodeDeleteInvitationsRequest :: Encode DeleteInvitationsRequest where encode = genericEncode options

-- | Constructs DeleteInvitationsRequest from required parameters
newDeleteInvitationsRequest :: DeleteInvitationsRequest
newDeleteInvitationsRequest  = DeleteInvitationsRequest { "AccountIds": (NullOrUndefined Nothing) }

-- | Constructs DeleteInvitationsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteInvitationsRequest' :: ( { "AccountIds" :: NullOrUndefined (AccountIds) } -> {"AccountIds" :: NullOrUndefined (AccountIds) } ) -> DeleteInvitationsRequest
newDeleteInvitationsRequest'  customize = (DeleteInvitationsRequest <<< customize) { "AccountIds": (NullOrUndefined Nothing) }



newtype DeleteInvitationsResponse = DeleteInvitationsResponse 
  { "UnprocessedAccounts" :: NullOrUndefined (UnprocessedAccounts)
  }
derive instance newtypeDeleteInvitationsResponse :: Newtype DeleteInvitationsResponse _
derive instance repGenericDeleteInvitationsResponse :: Generic DeleteInvitationsResponse _
instance showDeleteInvitationsResponse :: Show DeleteInvitationsResponse where show = genericShow
instance decodeDeleteInvitationsResponse :: Decode DeleteInvitationsResponse where decode = genericDecode options
instance encodeDeleteInvitationsResponse :: Encode DeleteInvitationsResponse where encode = genericEncode options

-- | Constructs DeleteInvitationsResponse from required parameters
newDeleteInvitationsResponse :: DeleteInvitationsResponse
newDeleteInvitationsResponse  = DeleteInvitationsResponse { "UnprocessedAccounts": (NullOrUndefined Nothing) }

-- | Constructs DeleteInvitationsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteInvitationsResponse' :: ( { "UnprocessedAccounts" :: NullOrUndefined (UnprocessedAccounts) } -> {"UnprocessedAccounts" :: NullOrUndefined (UnprocessedAccounts) } ) -> DeleteInvitationsResponse
newDeleteInvitationsResponse'  customize = (DeleteInvitationsResponse <<< customize) { "UnprocessedAccounts": (NullOrUndefined Nothing) }



-- | DeleteMembers request body.
newtype DeleteMembersRequest = DeleteMembersRequest 
  { "AccountIds" :: NullOrUndefined (AccountIds)
  , "DetectorId" :: (String)
  }
derive instance newtypeDeleteMembersRequest :: Newtype DeleteMembersRequest _
derive instance repGenericDeleteMembersRequest :: Generic DeleteMembersRequest _
instance showDeleteMembersRequest :: Show DeleteMembersRequest where show = genericShow
instance decodeDeleteMembersRequest :: Decode DeleteMembersRequest where decode = genericDecode options
instance encodeDeleteMembersRequest :: Encode DeleteMembersRequest where encode = genericEncode options

-- | Constructs DeleteMembersRequest from required parameters
newDeleteMembersRequest :: String -> DeleteMembersRequest
newDeleteMembersRequest _DetectorId = DeleteMembersRequest { "DetectorId": _DetectorId, "AccountIds": (NullOrUndefined Nothing) }

-- | Constructs DeleteMembersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteMembersRequest' :: String -> ( { "AccountIds" :: NullOrUndefined (AccountIds) , "DetectorId" :: (String) } -> {"AccountIds" :: NullOrUndefined (AccountIds) , "DetectorId" :: (String) } ) -> DeleteMembersRequest
newDeleteMembersRequest' _DetectorId customize = (DeleteMembersRequest <<< customize) { "DetectorId": _DetectorId, "AccountIds": (NullOrUndefined Nothing) }



newtype DeleteMembersResponse = DeleteMembersResponse 
  { "UnprocessedAccounts" :: NullOrUndefined (UnprocessedAccounts)
  }
derive instance newtypeDeleteMembersResponse :: Newtype DeleteMembersResponse _
derive instance repGenericDeleteMembersResponse :: Generic DeleteMembersResponse _
instance showDeleteMembersResponse :: Show DeleteMembersResponse where show = genericShow
instance decodeDeleteMembersResponse :: Decode DeleteMembersResponse where decode = genericDecode options
instance encodeDeleteMembersResponse :: Encode DeleteMembersResponse where encode = genericEncode options

-- | Constructs DeleteMembersResponse from required parameters
newDeleteMembersResponse :: DeleteMembersResponse
newDeleteMembersResponse  = DeleteMembersResponse { "UnprocessedAccounts": (NullOrUndefined Nothing) }

-- | Constructs DeleteMembersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteMembersResponse' :: ( { "UnprocessedAccounts" :: NullOrUndefined (UnprocessedAccounts) } -> {"UnprocessedAccounts" :: NullOrUndefined (UnprocessedAccounts) } ) -> DeleteMembersResponse
newDeleteMembersResponse'  customize = (DeleteMembersResponse <<< customize) { "UnprocessedAccounts": (NullOrUndefined Nothing) }



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
  { "AccountIds" :: NullOrUndefined (AccountIds)
  , "DetectorId" :: (String)
  }
derive instance newtypeDisassociateMembersRequest :: Newtype DisassociateMembersRequest _
derive instance repGenericDisassociateMembersRequest :: Generic DisassociateMembersRequest _
instance showDisassociateMembersRequest :: Show DisassociateMembersRequest where show = genericShow
instance decodeDisassociateMembersRequest :: Decode DisassociateMembersRequest where decode = genericDecode options
instance encodeDisassociateMembersRequest :: Encode DisassociateMembersRequest where encode = genericEncode options

-- | Constructs DisassociateMembersRequest from required parameters
newDisassociateMembersRequest :: String -> DisassociateMembersRequest
newDisassociateMembersRequest _DetectorId = DisassociateMembersRequest { "DetectorId": _DetectorId, "AccountIds": (NullOrUndefined Nothing) }

-- | Constructs DisassociateMembersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisassociateMembersRequest' :: String -> ( { "AccountIds" :: NullOrUndefined (AccountIds) , "DetectorId" :: (String) } -> {"AccountIds" :: NullOrUndefined (AccountIds) , "DetectorId" :: (String) } ) -> DisassociateMembersRequest
newDisassociateMembersRequest' _DetectorId customize = (DisassociateMembersRequest <<< customize) { "DetectorId": _DetectorId, "AccountIds": (NullOrUndefined Nothing) }



newtype DisassociateMembersResponse = DisassociateMembersResponse 
  { "UnprocessedAccounts" :: NullOrUndefined (UnprocessedAccounts)
  }
derive instance newtypeDisassociateMembersResponse :: Newtype DisassociateMembersResponse _
derive instance repGenericDisassociateMembersResponse :: Generic DisassociateMembersResponse _
instance showDisassociateMembersResponse :: Show DisassociateMembersResponse where show = genericShow
instance decodeDisassociateMembersResponse :: Decode DisassociateMembersResponse where decode = genericDecode options
instance encodeDisassociateMembersResponse :: Encode DisassociateMembersResponse where encode = genericEncode options

-- | Constructs DisassociateMembersResponse from required parameters
newDisassociateMembersResponse :: DisassociateMembersResponse
newDisassociateMembersResponse  = DisassociateMembersResponse { "UnprocessedAccounts": (NullOrUndefined Nothing) }

-- | Constructs DisassociateMembersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisassociateMembersResponse' :: ( { "UnprocessedAccounts" :: NullOrUndefined (UnprocessedAccounts) } -> {"UnprocessedAccounts" :: NullOrUndefined (UnprocessedAccounts) } ) -> DisassociateMembersResponse
newDisassociateMembersResponse'  customize = (DisassociateMembersResponse <<< customize) { "UnprocessedAccounts": (NullOrUndefined Nothing) }



-- | Information about the DNS_REQUEST action described in this finding.
newtype DnsRequestAction = DnsRequestAction 
  { "Domain" :: NullOrUndefined (Domain)
  }
derive instance newtypeDnsRequestAction :: Newtype DnsRequestAction _
derive instance repGenericDnsRequestAction :: Generic DnsRequestAction _
instance showDnsRequestAction :: Show DnsRequestAction where show = genericShow
instance decodeDnsRequestAction :: Decode DnsRequestAction where decode = genericDecode options
instance encodeDnsRequestAction :: Encode DnsRequestAction where encode = genericEncode options

-- | Constructs DnsRequestAction from required parameters
newDnsRequestAction :: DnsRequestAction
newDnsRequestAction  = DnsRequestAction { "Domain": (NullOrUndefined Nothing) }

-- | Constructs DnsRequestAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDnsRequestAction' :: ( { "Domain" :: NullOrUndefined (Domain) } -> {"Domain" :: NullOrUndefined (Domain) } ) -> DnsRequestAction
newDnsRequestAction'  customize = (DnsRequestAction <<< customize) { "Domain": (NullOrUndefined Nothing) }



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
  { "Message" :: NullOrUndefined (String)
  , "Type" :: NullOrUndefined (String)
  }
derive instance newtypeErrorResponse :: Newtype ErrorResponse _
derive instance repGenericErrorResponse :: Generic ErrorResponse _
instance showErrorResponse :: Show ErrorResponse where show = genericShow
instance decodeErrorResponse :: Decode ErrorResponse where decode = genericDecode options
instance encodeErrorResponse :: Encode ErrorResponse where encode = genericEncode options

-- | Constructs ErrorResponse from required parameters
newErrorResponse :: ErrorResponse
newErrorResponse  = ErrorResponse { "Message": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs ErrorResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newErrorResponse' :: ( { "Message" :: NullOrUndefined (String) , "Type" :: NullOrUndefined (String) } -> {"Message" :: NullOrUndefined (String) , "Type" :: NullOrUndefined (String) } ) -> ErrorResponse
newErrorResponse'  customize = (ErrorResponse <<< customize) { "Message": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



-- | Finding Feedback Value
newtype Feedback = Feedback String
derive instance newtypeFeedback :: Newtype Feedback _
derive instance repGenericFeedback :: Generic Feedback _
instance showFeedback :: Show Feedback where show = genericShow
instance decodeFeedback :: Decode Feedback where decode = genericDecode options
instance encodeFeedback :: Encode Feedback where encode = genericEncode options



-- | Representation of a abnormal or suspicious activity.
newtype Finding = Finding 
  { "AccountId" :: NullOrUndefined (String)
  , "Arn" :: NullOrUndefined (String)
  , "Confidence" :: NullOrUndefined (Number)
  , "CreatedAt" :: NullOrUndefined (CreatedAt)
  , "Description" :: NullOrUndefined (String)
  , "Id" :: NullOrUndefined (String)
  , "Partition" :: NullOrUndefined (String)
  , "Region" :: NullOrUndefined (String)
  , "Resource" :: NullOrUndefined (Resource)
  , "SchemaVersion" :: NullOrUndefined (String)
  , "Service" :: NullOrUndefined (Service)
  , "Severity" :: NullOrUndefined (Number)
  , "Title" :: NullOrUndefined (String)
  , "Type" :: NullOrUndefined (String)
  , "UpdatedAt" :: NullOrUndefined (UpdatedAt)
  }
derive instance newtypeFinding :: Newtype Finding _
derive instance repGenericFinding :: Generic Finding _
instance showFinding :: Show Finding where show = genericShow
instance decodeFinding :: Decode Finding where decode = genericDecode options
instance encodeFinding :: Encode Finding where encode = genericEncode options

-- | Constructs Finding from required parameters
newFinding :: Finding
newFinding  = Finding { "AccountId": (NullOrUndefined Nothing), "Arn": (NullOrUndefined Nothing), "Confidence": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "Partition": (NullOrUndefined Nothing), "Region": (NullOrUndefined Nothing), "Resource": (NullOrUndefined Nothing), "SchemaVersion": (NullOrUndefined Nothing), "Service": (NullOrUndefined Nothing), "Severity": (NullOrUndefined Nothing), "Title": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing), "UpdatedAt": (NullOrUndefined Nothing) }

-- | Constructs Finding's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFinding' :: ( { "AccountId" :: NullOrUndefined (String) , "Arn" :: NullOrUndefined (String) , "Confidence" :: NullOrUndefined (Number) , "CreatedAt" :: NullOrUndefined (CreatedAt) , "Description" :: NullOrUndefined (String) , "Id" :: NullOrUndefined (String) , "Partition" :: NullOrUndefined (String) , "Region" :: NullOrUndefined (String) , "Resource" :: NullOrUndefined (Resource) , "SchemaVersion" :: NullOrUndefined (String) , "Service" :: NullOrUndefined (Service) , "Severity" :: NullOrUndefined (Number) , "Title" :: NullOrUndefined (String) , "Type" :: NullOrUndefined (String) , "UpdatedAt" :: NullOrUndefined (UpdatedAt) } -> {"AccountId" :: NullOrUndefined (String) , "Arn" :: NullOrUndefined (String) , "Confidence" :: NullOrUndefined (Number) , "CreatedAt" :: NullOrUndefined (CreatedAt) , "Description" :: NullOrUndefined (String) , "Id" :: NullOrUndefined (String) , "Partition" :: NullOrUndefined (String) , "Region" :: NullOrUndefined (String) , "Resource" :: NullOrUndefined (Resource) , "SchemaVersion" :: NullOrUndefined (String) , "Service" :: NullOrUndefined (Service) , "Severity" :: NullOrUndefined (Number) , "Title" :: NullOrUndefined (String) , "Type" :: NullOrUndefined (String) , "UpdatedAt" :: NullOrUndefined (UpdatedAt) } ) -> Finding
newFinding'  customize = (Finding <<< customize) { "AccountId": (NullOrUndefined Nothing), "Arn": (NullOrUndefined Nothing), "Confidence": (NullOrUndefined Nothing), "CreatedAt": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "Partition": (NullOrUndefined Nothing), "Region": (NullOrUndefined Nothing), "Resource": (NullOrUndefined Nothing), "SchemaVersion": (NullOrUndefined Nothing), "Service": (NullOrUndefined Nothing), "Severity": (NullOrUndefined Nothing), "Title": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing), "UpdatedAt": (NullOrUndefined Nothing) }



-- | Represents the criteria used for querying findings.
newtype FindingCriteria = FindingCriteria 
  { "Criterion" :: NullOrUndefined (MapOfCondition)
  }
derive instance newtypeFindingCriteria :: Newtype FindingCriteria _
derive instance repGenericFindingCriteria :: Generic FindingCriteria _
instance showFindingCriteria :: Show FindingCriteria where show = genericShow
instance decodeFindingCriteria :: Decode FindingCriteria where decode = genericDecode options
instance encodeFindingCriteria :: Encode FindingCriteria where encode = genericEncode options

-- | Constructs FindingCriteria from required parameters
newFindingCriteria :: FindingCriteria
newFindingCriteria  = FindingCriteria { "Criterion": (NullOrUndefined Nothing) }

-- | Constructs FindingCriteria's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFindingCriteria' :: ( { "Criterion" :: NullOrUndefined (MapOfCondition) } -> {"Criterion" :: NullOrUndefined (MapOfCondition) } ) -> FindingCriteria
newFindingCriteria'  customize = (FindingCriteria <<< customize) { "Criterion": (NullOrUndefined Nothing) }



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
  { "CountBySeverity" :: NullOrUndefined (MapOfCountBySeverityFindingStatistic)
  }
derive instance newtypeFindingStatistics :: Newtype FindingStatistics _
derive instance repGenericFindingStatistics :: Generic FindingStatistics _
instance showFindingStatistics :: Show FindingStatistics where show = genericShow
instance decodeFindingStatistics :: Decode FindingStatistics where decode = genericDecode options
instance encodeFindingStatistics :: Encode FindingStatistics where encode = genericEncode options

-- | Constructs FindingStatistics from required parameters
newFindingStatistics :: FindingStatistics
newFindingStatistics  = FindingStatistics { "CountBySeverity": (NullOrUndefined Nothing) }

-- | Constructs FindingStatistics's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFindingStatistics' :: ( { "CountBySeverity" :: NullOrUndefined (MapOfCountBySeverityFindingStatistic) } -> {"CountBySeverity" :: NullOrUndefined (MapOfCountBySeverityFindingStatistic) } ) -> FindingStatistics
newFindingStatistics'  customize = (FindingStatistics <<< customize) { "CountBySeverity": (NullOrUndefined Nothing) }



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
  { "Lat" :: NullOrUndefined (Number)
  , "Lon" :: NullOrUndefined (Number)
  }
derive instance newtypeGeoLocation :: Newtype GeoLocation _
derive instance repGenericGeoLocation :: Generic GeoLocation _
instance showGeoLocation :: Show GeoLocation where show = genericShow
instance decodeGeoLocation :: Decode GeoLocation where decode = genericDecode options
instance encodeGeoLocation :: Encode GeoLocation where encode = genericEncode options

-- | Constructs GeoLocation from required parameters
newGeoLocation :: GeoLocation
newGeoLocation  = GeoLocation { "Lat": (NullOrUndefined Nothing), "Lon": (NullOrUndefined Nothing) }

-- | Constructs GeoLocation's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGeoLocation' :: ( { "Lat" :: NullOrUndefined (Number) , "Lon" :: NullOrUndefined (Number) } -> {"Lat" :: NullOrUndefined (Number) , "Lon" :: NullOrUndefined (Number) } ) -> GeoLocation
newGeoLocation'  customize = (GeoLocation <<< customize) { "Lat": (NullOrUndefined Nothing), "Lon": (NullOrUndefined Nothing) }



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
  { "CreatedAt" :: NullOrUndefined (CreatedAt)
  , "ServiceRole" :: NullOrUndefined (ServiceRole)
  , "Status" :: NullOrUndefined (DetectorStatus)
  , "UpdatedAt" :: NullOrUndefined (UpdatedAt)
  }
derive instance newtypeGetDetectorResponse :: Newtype GetDetectorResponse _
derive instance repGenericGetDetectorResponse :: Generic GetDetectorResponse _
instance showGetDetectorResponse :: Show GetDetectorResponse where show = genericShow
instance decodeGetDetectorResponse :: Decode GetDetectorResponse where decode = genericDecode options
instance encodeGetDetectorResponse :: Encode GetDetectorResponse where encode = genericEncode options

-- | Constructs GetDetectorResponse from required parameters
newGetDetectorResponse :: GetDetectorResponse
newGetDetectorResponse  = GetDetectorResponse { "CreatedAt": (NullOrUndefined Nothing), "ServiceRole": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "UpdatedAt": (NullOrUndefined Nothing) }

-- | Constructs GetDetectorResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetDetectorResponse' :: ( { "CreatedAt" :: NullOrUndefined (CreatedAt) , "ServiceRole" :: NullOrUndefined (ServiceRole) , "Status" :: NullOrUndefined (DetectorStatus) , "UpdatedAt" :: NullOrUndefined (UpdatedAt) } -> {"CreatedAt" :: NullOrUndefined (CreatedAt) , "ServiceRole" :: NullOrUndefined (ServiceRole) , "Status" :: NullOrUndefined (DetectorStatus) , "UpdatedAt" :: NullOrUndefined (UpdatedAt) } ) -> GetDetectorResponse
newGetDetectorResponse'  customize = (GetDetectorResponse <<< customize) { "CreatedAt": (NullOrUndefined Nothing), "ServiceRole": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "UpdatedAt": (NullOrUndefined Nothing) }



-- | GetFindings request body.
newtype GetFindingsRequest = GetFindingsRequest 
  { "DetectorId" :: (String)
  , "FindingIds" :: NullOrUndefined (FindingIds)
  , "SortCriteria" :: NullOrUndefined (SortCriteria)
  }
derive instance newtypeGetFindingsRequest :: Newtype GetFindingsRequest _
derive instance repGenericGetFindingsRequest :: Generic GetFindingsRequest _
instance showGetFindingsRequest :: Show GetFindingsRequest where show = genericShow
instance decodeGetFindingsRequest :: Decode GetFindingsRequest where decode = genericDecode options
instance encodeGetFindingsRequest :: Encode GetFindingsRequest where encode = genericEncode options

-- | Constructs GetFindingsRequest from required parameters
newGetFindingsRequest :: String -> GetFindingsRequest
newGetFindingsRequest _DetectorId = GetFindingsRequest { "DetectorId": _DetectorId, "FindingIds": (NullOrUndefined Nothing), "SortCriteria": (NullOrUndefined Nothing) }

-- | Constructs GetFindingsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetFindingsRequest' :: String -> ( { "DetectorId" :: (String) , "FindingIds" :: NullOrUndefined (FindingIds) , "SortCriteria" :: NullOrUndefined (SortCriteria) } -> {"DetectorId" :: (String) , "FindingIds" :: NullOrUndefined (FindingIds) , "SortCriteria" :: NullOrUndefined (SortCriteria) } ) -> GetFindingsRequest
newGetFindingsRequest' _DetectorId customize = (GetFindingsRequest <<< customize) { "DetectorId": _DetectorId, "FindingIds": (NullOrUndefined Nothing), "SortCriteria": (NullOrUndefined Nothing) }



newtype GetFindingsResponse = GetFindingsResponse 
  { "Findings" :: NullOrUndefined (Findings)
  }
derive instance newtypeGetFindingsResponse :: Newtype GetFindingsResponse _
derive instance repGenericGetFindingsResponse :: Generic GetFindingsResponse _
instance showGetFindingsResponse :: Show GetFindingsResponse where show = genericShow
instance decodeGetFindingsResponse :: Decode GetFindingsResponse where decode = genericDecode options
instance encodeGetFindingsResponse :: Encode GetFindingsResponse where encode = genericEncode options

-- | Constructs GetFindingsResponse from required parameters
newGetFindingsResponse :: GetFindingsResponse
newGetFindingsResponse  = GetFindingsResponse { "Findings": (NullOrUndefined Nothing) }

-- | Constructs GetFindingsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetFindingsResponse' :: ( { "Findings" :: NullOrUndefined (Findings) } -> {"Findings" :: NullOrUndefined (Findings) } ) -> GetFindingsResponse
newGetFindingsResponse'  customize = (GetFindingsResponse <<< customize) { "Findings": (NullOrUndefined Nothing) }



-- | GetFindingsStatistics request body.
newtype GetFindingsStatisticsRequest = GetFindingsStatisticsRequest 
  { "DetectorId" :: (String)
  , "FindingCriteria" :: NullOrUndefined (FindingCriteria)
  , "FindingStatisticTypes" :: NullOrUndefined (FindingStatisticTypes)
  }
derive instance newtypeGetFindingsStatisticsRequest :: Newtype GetFindingsStatisticsRequest _
derive instance repGenericGetFindingsStatisticsRequest :: Generic GetFindingsStatisticsRequest _
instance showGetFindingsStatisticsRequest :: Show GetFindingsStatisticsRequest where show = genericShow
instance decodeGetFindingsStatisticsRequest :: Decode GetFindingsStatisticsRequest where decode = genericDecode options
instance encodeGetFindingsStatisticsRequest :: Encode GetFindingsStatisticsRequest where encode = genericEncode options

-- | Constructs GetFindingsStatisticsRequest from required parameters
newGetFindingsStatisticsRequest :: String -> GetFindingsStatisticsRequest
newGetFindingsStatisticsRequest _DetectorId = GetFindingsStatisticsRequest { "DetectorId": _DetectorId, "FindingCriteria": (NullOrUndefined Nothing), "FindingStatisticTypes": (NullOrUndefined Nothing) }

-- | Constructs GetFindingsStatisticsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetFindingsStatisticsRequest' :: String -> ( { "DetectorId" :: (String) , "FindingCriteria" :: NullOrUndefined (FindingCriteria) , "FindingStatisticTypes" :: NullOrUndefined (FindingStatisticTypes) } -> {"DetectorId" :: (String) , "FindingCriteria" :: NullOrUndefined (FindingCriteria) , "FindingStatisticTypes" :: NullOrUndefined (FindingStatisticTypes) } ) -> GetFindingsStatisticsRequest
newGetFindingsStatisticsRequest' _DetectorId customize = (GetFindingsStatisticsRequest <<< customize) { "DetectorId": _DetectorId, "FindingCriteria": (NullOrUndefined Nothing), "FindingStatisticTypes": (NullOrUndefined Nothing) }



newtype GetFindingsStatisticsResponse = GetFindingsStatisticsResponse 
  { "FindingStatistics" :: NullOrUndefined (FindingStatistics)
  }
derive instance newtypeGetFindingsStatisticsResponse :: Newtype GetFindingsStatisticsResponse _
derive instance repGenericGetFindingsStatisticsResponse :: Generic GetFindingsStatisticsResponse _
instance showGetFindingsStatisticsResponse :: Show GetFindingsStatisticsResponse where show = genericShow
instance decodeGetFindingsStatisticsResponse :: Decode GetFindingsStatisticsResponse where decode = genericDecode options
instance encodeGetFindingsStatisticsResponse :: Encode GetFindingsStatisticsResponse where encode = genericEncode options

-- | Constructs GetFindingsStatisticsResponse from required parameters
newGetFindingsStatisticsResponse :: GetFindingsStatisticsResponse
newGetFindingsStatisticsResponse  = GetFindingsStatisticsResponse { "FindingStatistics": (NullOrUndefined Nothing) }

-- | Constructs GetFindingsStatisticsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetFindingsStatisticsResponse' :: ( { "FindingStatistics" :: NullOrUndefined (FindingStatistics) } -> {"FindingStatistics" :: NullOrUndefined (FindingStatistics) } ) -> GetFindingsStatisticsResponse
newGetFindingsStatisticsResponse'  customize = (GetFindingsStatisticsResponse <<< customize) { "FindingStatistics": (NullOrUndefined Nothing) }



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
  { "Format" :: NullOrUndefined (IpSetFormat)
  , "Location" :: NullOrUndefined (Location)
  , "Name" :: NullOrUndefined (Name)
  , "Status" :: NullOrUndefined (IpSetStatus)
  }
derive instance newtypeGetIPSetResponse :: Newtype GetIPSetResponse _
derive instance repGenericGetIPSetResponse :: Generic GetIPSetResponse _
instance showGetIPSetResponse :: Show GetIPSetResponse where show = genericShow
instance decodeGetIPSetResponse :: Decode GetIPSetResponse where decode = genericDecode options
instance encodeGetIPSetResponse :: Encode GetIPSetResponse where encode = genericEncode options

-- | Constructs GetIPSetResponse from required parameters
newGetIPSetResponse :: GetIPSetResponse
newGetIPSetResponse  = GetIPSetResponse { "Format": (NullOrUndefined Nothing), "Location": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }

-- | Constructs GetIPSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetIPSetResponse' :: ( { "Format" :: NullOrUndefined (IpSetFormat) , "Location" :: NullOrUndefined (Location) , "Name" :: NullOrUndefined (Name) , "Status" :: NullOrUndefined (IpSetStatus) } -> {"Format" :: NullOrUndefined (IpSetFormat) , "Location" :: NullOrUndefined (Location) , "Name" :: NullOrUndefined (Name) , "Status" :: NullOrUndefined (IpSetStatus) } ) -> GetIPSetResponse
newGetIPSetResponse'  customize = (GetIPSetResponse <<< customize) { "Format": (NullOrUndefined Nothing), "Location": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }



newtype GetInvitationsCountRequest = GetInvitationsCountRequest Types.NoArguments
derive instance newtypeGetInvitationsCountRequest :: Newtype GetInvitationsCountRequest _
derive instance repGenericGetInvitationsCountRequest :: Generic GetInvitationsCountRequest _
instance showGetInvitationsCountRequest :: Show GetInvitationsCountRequest where show = genericShow
instance decodeGetInvitationsCountRequest :: Decode GetInvitationsCountRequest where decode = genericDecode options
instance encodeGetInvitationsCountRequest :: Encode GetInvitationsCountRequest where encode = genericEncode options



newtype GetInvitationsCountResponse = GetInvitationsCountResponse 
  { "InvitationsCount" :: NullOrUndefined (Int)
  }
derive instance newtypeGetInvitationsCountResponse :: Newtype GetInvitationsCountResponse _
derive instance repGenericGetInvitationsCountResponse :: Generic GetInvitationsCountResponse _
instance showGetInvitationsCountResponse :: Show GetInvitationsCountResponse where show = genericShow
instance decodeGetInvitationsCountResponse :: Decode GetInvitationsCountResponse where decode = genericDecode options
instance encodeGetInvitationsCountResponse :: Encode GetInvitationsCountResponse where encode = genericEncode options

-- | Constructs GetInvitationsCountResponse from required parameters
newGetInvitationsCountResponse :: GetInvitationsCountResponse
newGetInvitationsCountResponse  = GetInvitationsCountResponse { "InvitationsCount": (NullOrUndefined Nothing) }

-- | Constructs GetInvitationsCountResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetInvitationsCountResponse' :: ( { "InvitationsCount" :: NullOrUndefined (Int) } -> {"InvitationsCount" :: NullOrUndefined (Int) } ) -> GetInvitationsCountResponse
newGetInvitationsCountResponse'  customize = (GetInvitationsCountResponse <<< customize) { "InvitationsCount": (NullOrUndefined Nothing) }



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
  { "Master" :: NullOrUndefined (Master)
  }
derive instance newtypeGetMasterAccountResponse :: Newtype GetMasterAccountResponse _
derive instance repGenericGetMasterAccountResponse :: Generic GetMasterAccountResponse _
instance showGetMasterAccountResponse :: Show GetMasterAccountResponse where show = genericShow
instance decodeGetMasterAccountResponse :: Decode GetMasterAccountResponse where decode = genericDecode options
instance encodeGetMasterAccountResponse :: Encode GetMasterAccountResponse where encode = genericEncode options

-- | Constructs GetMasterAccountResponse from required parameters
newGetMasterAccountResponse :: GetMasterAccountResponse
newGetMasterAccountResponse  = GetMasterAccountResponse { "Master": (NullOrUndefined Nothing) }

-- | Constructs GetMasterAccountResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetMasterAccountResponse' :: ( { "Master" :: NullOrUndefined (Master) } -> {"Master" :: NullOrUndefined (Master) } ) -> GetMasterAccountResponse
newGetMasterAccountResponse'  customize = (GetMasterAccountResponse <<< customize) { "Master": (NullOrUndefined Nothing) }



-- | GetMembers request body.
newtype GetMembersRequest = GetMembersRequest 
  { "AccountIds" :: NullOrUndefined (AccountIds)
  , "DetectorId" :: (String)
  }
derive instance newtypeGetMembersRequest :: Newtype GetMembersRequest _
derive instance repGenericGetMembersRequest :: Generic GetMembersRequest _
instance showGetMembersRequest :: Show GetMembersRequest where show = genericShow
instance decodeGetMembersRequest :: Decode GetMembersRequest where decode = genericDecode options
instance encodeGetMembersRequest :: Encode GetMembersRequest where encode = genericEncode options

-- | Constructs GetMembersRequest from required parameters
newGetMembersRequest :: String -> GetMembersRequest
newGetMembersRequest _DetectorId = GetMembersRequest { "DetectorId": _DetectorId, "AccountIds": (NullOrUndefined Nothing) }

-- | Constructs GetMembersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetMembersRequest' :: String -> ( { "AccountIds" :: NullOrUndefined (AccountIds) , "DetectorId" :: (String) } -> {"AccountIds" :: NullOrUndefined (AccountIds) , "DetectorId" :: (String) } ) -> GetMembersRequest
newGetMembersRequest' _DetectorId customize = (GetMembersRequest <<< customize) { "DetectorId": _DetectorId, "AccountIds": (NullOrUndefined Nothing) }



newtype GetMembersResponse = GetMembersResponse 
  { "Members" :: NullOrUndefined (Members)
  , "UnprocessedAccounts" :: NullOrUndefined (UnprocessedAccounts)
  }
derive instance newtypeGetMembersResponse :: Newtype GetMembersResponse _
derive instance repGenericGetMembersResponse :: Generic GetMembersResponse _
instance showGetMembersResponse :: Show GetMembersResponse where show = genericShow
instance decodeGetMembersResponse :: Decode GetMembersResponse where decode = genericDecode options
instance encodeGetMembersResponse :: Encode GetMembersResponse where encode = genericEncode options

-- | Constructs GetMembersResponse from required parameters
newGetMembersResponse :: GetMembersResponse
newGetMembersResponse  = GetMembersResponse { "Members": (NullOrUndefined Nothing), "UnprocessedAccounts": (NullOrUndefined Nothing) }

-- | Constructs GetMembersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetMembersResponse' :: ( { "Members" :: NullOrUndefined (Members) , "UnprocessedAccounts" :: NullOrUndefined (UnprocessedAccounts) } -> {"Members" :: NullOrUndefined (Members) , "UnprocessedAccounts" :: NullOrUndefined (UnprocessedAccounts) } ) -> GetMembersResponse
newGetMembersResponse'  customize = (GetMembersResponse <<< customize) { "Members": (NullOrUndefined Nothing), "UnprocessedAccounts": (NullOrUndefined Nothing) }



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
  { "Format" :: NullOrUndefined (ThreatIntelSetFormat)
  , "Location" :: NullOrUndefined (Location)
  , "Name" :: NullOrUndefined (Name)
  , "Status" :: NullOrUndefined (ThreatIntelSetStatus)
  }
derive instance newtypeGetThreatIntelSetResponse :: Newtype GetThreatIntelSetResponse _
derive instance repGenericGetThreatIntelSetResponse :: Generic GetThreatIntelSetResponse _
instance showGetThreatIntelSetResponse :: Show GetThreatIntelSetResponse where show = genericShow
instance decodeGetThreatIntelSetResponse :: Decode GetThreatIntelSetResponse where decode = genericDecode options
instance encodeGetThreatIntelSetResponse :: Encode GetThreatIntelSetResponse where encode = genericEncode options

-- | Constructs GetThreatIntelSetResponse from required parameters
newGetThreatIntelSetResponse :: GetThreatIntelSetResponse
newGetThreatIntelSetResponse  = GetThreatIntelSetResponse { "Format": (NullOrUndefined Nothing), "Location": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }

-- | Constructs GetThreatIntelSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetThreatIntelSetResponse' :: ( { "Format" :: NullOrUndefined (ThreatIntelSetFormat) , "Location" :: NullOrUndefined (Location) , "Name" :: NullOrUndefined (Name) , "Status" :: NullOrUndefined (ThreatIntelSetStatus) } -> {"Format" :: NullOrUndefined (ThreatIntelSetFormat) , "Location" :: NullOrUndefined (Location) , "Name" :: NullOrUndefined (Name) , "Status" :: NullOrUndefined (ThreatIntelSetStatus) } ) -> GetThreatIntelSetResponse
newGetThreatIntelSetResponse'  customize = (GetThreatIntelSetResponse <<< customize) { "Format": (NullOrUndefined Nothing), "Location": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }



-- | The profile information of the EC2 instance.
newtype IamInstanceProfile = IamInstanceProfile 
  { "Arn" :: NullOrUndefined (String)
  , "Id" :: NullOrUndefined (String)
  }
derive instance newtypeIamInstanceProfile :: Newtype IamInstanceProfile _
derive instance repGenericIamInstanceProfile :: Generic IamInstanceProfile _
instance showIamInstanceProfile :: Show IamInstanceProfile where show = genericShow
instance decodeIamInstanceProfile :: Decode IamInstanceProfile where decode = genericDecode options
instance encodeIamInstanceProfile :: Encode IamInstanceProfile where encode = genericEncode options

-- | Constructs IamInstanceProfile from required parameters
newIamInstanceProfile :: IamInstanceProfile
newIamInstanceProfile  = IamInstanceProfile { "Arn": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing) }

-- | Constructs IamInstanceProfile's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIamInstanceProfile' :: ( { "Arn" :: NullOrUndefined (String) , "Id" :: NullOrUndefined (String) } -> {"Arn" :: NullOrUndefined (String) , "Id" :: NullOrUndefined (String) } ) -> IamInstanceProfile
newIamInstanceProfile'  customize = (IamInstanceProfile <<< customize) { "Arn": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing) }



-- | The information about the EC2 instance associated with the activity that prompted GuardDuty to generate a finding.
newtype InstanceDetails = InstanceDetails 
  { "AvailabilityZone" :: NullOrUndefined (String)
  , "IamInstanceProfile" :: NullOrUndefined (IamInstanceProfile)
  , "ImageId" :: NullOrUndefined (String)
  , "InstanceId" :: NullOrUndefined (String)
  , "InstanceState" :: NullOrUndefined (String)
  , "InstanceType" :: NullOrUndefined (String)
  , "LaunchTime" :: NullOrUndefined (String)
  , "NetworkInterfaces" :: NullOrUndefined (NetworkInterfaces)
  , "Platform" :: NullOrUndefined (String)
  , "ProductCodes" :: NullOrUndefined (ProductCodes)
  , "Tags" :: NullOrUndefined (Tags)
  }
derive instance newtypeInstanceDetails :: Newtype InstanceDetails _
derive instance repGenericInstanceDetails :: Generic InstanceDetails _
instance showInstanceDetails :: Show InstanceDetails where show = genericShow
instance decodeInstanceDetails :: Decode InstanceDetails where decode = genericDecode options
instance encodeInstanceDetails :: Encode InstanceDetails where encode = genericEncode options

-- | Constructs InstanceDetails from required parameters
newInstanceDetails :: InstanceDetails
newInstanceDetails  = InstanceDetails { "AvailabilityZone": (NullOrUndefined Nothing), "IamInstanceProfile": (NullOrUndefined Nothing), "ImageId": (NullOrUndefined Nothing), "InstanceId": (NullOrUndefined Nothing), "InstanceState": (NullOrUndefined Nothing), "InstanceType": (NullOrUndefined Nothing), "LaunchTime": (NullOrUndefined Nothing), "NetworkInterfaces": (NullOrUndefined Nothing), "Platform": (NullOrUndefined Nothing), "ProductCodes": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing) }

-- | Constructs InstanceDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceDetails' :: ( { "AvailabilityZone" :: NullOrUndefined (String) , "IamInstanceProfile" :: NullOrUndefined (IamInstanceProfile) , "ImageId" :: NullOrUndefined (String) , "InstanceId" :: NullOrUndefined (String) , "InstanceState" :: NullOrUndefined (String) , "InstanceType" :: NullOrUndefined (String) , "LaunchTime" :: NullOrUndefined (String) , "NetworkInterfaces" :: NullOrUndefined (NetworkInterfaces) , "Platform" :: NullOrUndefined (String) , "ProductCodes" :: NullOrUndefined (ProductCodes) , "Tags" :: NullOrUndefined (Tags) } -> {"AvailabilityZone" :: NullOrUndefined (String) , "IamInstanceProfile" :: NullOrUndefined (IamInstanceProfile) , "ImageId" :: NullOrUndefined (String) , "InstanceId" :: NullOrUndefined (String) , "InstanceState" :: NullOrUndefined (String) , "InstanceType" :: NullOrUndefined (String) , "LaunchTime" :: NullOrUndefined (String) , "NetworkInterfaces" :: NullOrUndefined (NetworkInterfaces) , "Platform" :: NullOrUndefined (String) , "ProductCodes" :: NullOrUndefined (ProductCodes) , "Tags" :: NullOrUndefined (Tags) } ) -> InstanceDetails
newInstanceDetails'  customize = (InstanceDetails <<< customize) { "AvailabilityZone": (NullOrUndefined Nothing), "IamInstanceProfile": (NullOrUndefined Nothing), "ImageId": (NullOrUndefined Nothing), "InstanceId": (NullOrUndefined Nothing), "InstanceState": (NullOrUndefined Nothing), "InstanceType": (NullOrUndefined Nothing), "LaunchTime": (NullOrUndefined Nothing), "NetworkInterfaces": (NullOrUndefined Nothing), "Platform": (NullOrUndefined Nothing), "ProductCodes": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing) }



-- | Error response object.
newtype InternalServerErrorException = InternalServerErrorException 
  { "Message" :: NullOrUndefined (String)
  , "Type" :: NullOrUndefined (String)
  }
derive instance newtypeInternalServerErrorException :: Newtype InternalServerErrorException _
derive instance repGenericInternalServerErrorException :: Generic InternalServerErrorException _
instance showInternalServerErrorException :: Show InternalServerErrorException where show = genericShow
instance decodeInternalServerErrorException :: Decode InternalServerErrorException where decode = genericDecode options
instance encodeInternalServerErrorException :: Encode InternalServerErrorException where encode = genericEncode options

-- | Constructs InternalServerErrorException from required parameters
newInternalServerErrorException :: InternalServerErrorException
newInternalServerErrorException  = InternalServerErrorException { "Message": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs InternalServerErrorException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalServerErrorException' :: ( { "Message" :: NullOrUndefined (String) , "Type" :: NullOrUndefined (String) } -> {"Message" :: NullOrUndefined (String) , "Type" :: NullOrUndefined (String) } ) -> InternalServerErrorException
newInternalServerErrorException'  customize = (InternalServerErrorException <<< customize) { "Message": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



-- | Invitation from an AWS account to become the current account's master.
newtype Invitation = Invitation 
  { "AccountId" :: NullOrUndefined (String)
  , "InvitationId" :: NullOrUndefined (InvitationId)
  , "InvitedAt" :: NullOrUndefined (InvitedAt)
  , "RelationshipStatus" :: NullOrUndefined (String)
  }
derive instance newtypeInvitation :: Newtype Invitation _
derive instance repGenericInvitation :: Generic Invitation _
instance showInvitation :: Show Invitation where show = genericShow
instance decodeInvitation :: Decode Invitation where decode = genericDecode options
instance encodeInvitation :: Encode Invitation where encode = genericEncode options

-- | Constructs Invitation from required parameters
newInvitation :: Invitation
newInvitation  = Invitation { "AccountId": (NullOrUndefined Nothing), "InvitationId": (NullOrUndefined Nothing), "InvitedAt": (NullOrUndefined Nothing), "RelationshipStatus": (NullOrUndefined Nothing) }

-- | Constructs Invitation's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvitation' :: ( { "AccountId" :: NullOrUndefined (String) , "InvitationId" :: NullOrUndefined (InvitationId) , "InvitedAt" :: NullOrUndefined (InvitedAt) , "RelationshipStatus" :: NullOrUndefined (String) } -> {"AccountId" :: NullOrUndefined (String) , "InvitationId" :: NullOrUndefined (InvitationId) , "InvitedAt" :: NullOrUndefined (InvitedAt) , "RelationshipStatus" :: NullOrUndefined (String) } ) -> Invitation
newInvitation'  customize = (Invitation <<< customize) { "AccountId": (NullOrUndefined Nothing), "InvitationId": (NullOrUndefined Nothing), "InvitedAt": (NullOrUndefined Nothing), "RelationshipStatus": (NullOrUndefined Nothing) }



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
  { "AccountIds" :: NullOrUndefined (AccountIds)
  , "DetectorId" :: (String)
  , "Message" :: NullOrUndefined (Message)
  }
derive instance newtypeInviteMembersRequest :: Newtype InviteMembersRequest _
derive instance repGenericInviteMembersRequest :: Generic InviteMembersRequest _
instance showInviteMembersRequest :: Show InviteMembersRequest where show = genericShow
instance decodeInviteMembersRequest :: Decode InviteMembersRequest where decode = genericDecode options
instance encodeInviteMembersRequest :: Encode InviteMembersRequest where encode = genericEncode options

-- | Constructs InviteMembersRequest from required parameters
newInviteMembersRequest :: String -> InviteMembersRequest
newInviteMembersRequest _DetectorId = InviteMembersRequest { "DetectorId": _DetectorId, "AccountIds": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }

-- | Constructs InviteMembersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInviteMembersRequest' :: String -> ( { "AccountIds" :: NullOrUndefined (AccountIds) , "DetectorId" :: (String) , "Message" :: NullOrUndefined (Message) } -> {"AccountIds" :: NullOrUndefined (AccountIds) , "DetectorId" :: (String) , "Message" :: NullOrUndefined (Message) } ) -> InviteMembersRequest
newInviteMembersRequest' _DetectorId customize = (InviteMembersRequest <<< customize) { "DetectorId": _DetectorId, "AccountIds": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }



newtype InviteMembersResponse = InviteMembersResponse 
  { "UnprocessedAccounts" :: NullOrUndefined (UnprocessedAccounts)
  }
derive instance newtypeInviteMembersResponse :: Newtype InviteMembersResponse _
derive instance repGenericInviteMembersResponse :: Generic InviteMembersResponse _
instance showInviteMembersResponse :: Show InviteMembersResponse where show = genericShow
instance decodeInviteMembersResponse :: Decode InviteMembersResponse where decode = genericDecode options
instance encodeInviteMembersResponse :: Encode InviteMembersResponse where encode = genericEncode options

-- | Constructs InviteMembersResponse from required parameters
newInviteMembersResponse :: InviteMembersResponse
newInviteMembersResponse  = InviteMembersResponse { "UnprocessedAccounts": (NullOrUndefined Nothing) }

-- | Constructs InviteMembersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInviteMembersResponse' :: ( { "UnprocessedAccounts" :: NullOrUndefined (UnprocessedAccounts) } -> {"UnprocessedAccounts" :: NullOrUndefined (UnprocessedAccounts) } ) -> InviteMembersResponse
newInviteMembersResponse'  customize = (InviteMembersResponse <<< customize) { "UnprocessedAccounts": (NullOrUndefined Nothing) }



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
  { "MaxResults" :: NullOrUndefined (MaxResults)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeListDetectorsRequest :: Newtype ListDetectorsRequest _
derive instance repGenericListDetectorsRequest :: Generic ListDetectorsRequest _
instance showListDetectorsRequest :: Show ListDetectorsRequest where show = genericShow
instance decodeListDetectorsRequest :: Decode ListDetectorsRequest where decode = genericDecode options
instance encodeListDetectorsRequest :: Encode ListDetectorsRequest where encode = genericEncode options

-- | Constructs ListDetectorsRequest from required parameters
newListDetectorsRequest :: ListDetectorsRequest
newListDetectorsRequest  = ListDetectorsRequest { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListDetectorsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListDetectorsRequest' :: ( { "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (String) } -> {"MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (String) } ) -> ListDetectorsRequest
newListDetectorsRequest'  customize = (ListDetectorsRequest <<< customize) { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListDetectorsResponse = ListDetectorsResponse 
  { "DetectorIds" :: NullOrUndefined (DetectorIds)
  , "NextToken" :: NullOrUndefined (NextToken)
  }
derive instance newtypeListDetectorsResponse :: Newtype ListDetectorsResponse _
derive instance repGenericListDetectorsResponse :: Generic ListDetectorsResponse _
instance showListDetectorsResponse :: Show ListDetectorsResponse where show = genericShow
instance decodeListDetectorsResponse :: Decode ListDetectorsResponse where decode = genericDecode options
instance encodeListDetectorsResponse :: Encode ListDetectorsResponse where encode = genericEncode options

-- | Constructs ListDetectorsResponse from required parameters
newListDetectorsResponse :: ListDetectorsResponse
newListDetectorsResponse  = ListDetectorsResponse { "DetectorIds": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListDetectorsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListDetectorsResponse' :: ( { "DetectorIds" :: NullOrUndefined (DetectorIds) , "NextToken" :: NullOrUndefined (NextToken) } -> {"DetectorIds" :: NullOrUndefined (DetectorIds) , "NextToken" :: NullOrUndefined (NextToken) } ) -> ListDetectorsResponse
newListDetectorsResponse'  customize = (ListDetectorsResponse <<< customize) { "DetectorIds": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | ListFindings request body.
newtype ListFindingsRequest = ListFindingsRequest 
  { "DetectorId" :: (String)
  , "FindingCriteria" :: NullOrUndefined (FindingCriteria)
  , "MaxResults" :: NullOrUndefined (MaxResults)
  , "NextToken" :: NullOrUndefined (NextToken)
  , "SortCriteria" :: NullOrUndefined (SortCriteria)
  }
derive instance newtypeListFindingsRequest :: Newtype ListFindingsRequest _
derive instance repGenericListFindingsRequest :: Generic ListFindingsRequest _
instance showListFindingsRequest :: Show ListFindingsRequest where show = genericShow
instance decodeListFindingsRequest :: Decode ListFindingsRequest where decode = genericDecode options
instance encodeListFindingsRequest :: Encode ListFindingsRequest where encode = genericEncode options

-- | Constructs ListFindingsRequest from required parameters
newListFindingsRequest :: String -> ListFindingsRequest
newListFindingsRequest _DetectorId = ListFindingsRequest { "DetectorId": _DetectorId, "FindingCriteria": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "SortCriteria": (NullOrUndefined Nothing) }

-- | Constructs ListFindingsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListFindingsRequest' :: String -> ( { "DetectorId" :: (String) , "FindingCriteria" :: NullOrUndefined (FindingCriteria) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (NextToken) , "SortCriteria" :: NullOrUndefined (SortCriteria) } -> {"DetectorId" :: (String) , "FindingCriteria" :: NullOrUndefined (FindingCriteria) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (NextToken) , "SortCriteria" :: NullOrUndefined (SortCriteria) } ) -> ListFindingsRequest
newListFindingsRequest' _DetectorId customize = (ListFindingsRequest <<< customize) { "DetectorId": _DetectorId, "FindingCriteria": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "SortCriteria": (NullOrUndefined Nothing) }



newtype ListFindingsResponse = ListFindingsResponse 
  { "FindingIds" :: NullOrUndefined (FindingIds)
  , "NextToken" :: NullOrUndefined (NextToken)
  }
derive instance newtypeListFindingsResponse :: Newtype ListFindingsResponse _
derive instance repGenericListFindingsResponse :: Generic ListFindingsResponse _
instance showListFindingsResponse :: Show ListFindingsResponse where show = genericShow
instance decodeListFindingsResponse :: Decode ListFindingsResponse where decode = genericDecode options
instance encodeListFindingsResponse :: Encode ListFindingsResponse where encode = genericEncode options

-- | Constructs ListFindingsResponse from required parameters
newListFindingsResponse :: ListFindingsResponse
newListFindingsResponse  = ListFindingsResponse { "FindingIds": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListFindingsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListFindingsResponse' :: ( { "FindingIds" :: NullOrUndefined (FindingIds) , "NextToken" :: NullOrUndefined (NextToken) } -> {"FindingIds" :: NullOrUndefined (FindingIds) , "NextToken" :: NullOrUndefined (NextToken) } ) -> ListFindingsResponse
newListFindingsResponse'  customize = (ListFindingsResponse <<< customize) { "FindingIds": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListIPSetsRequest = ListIPSetsRequest 
  { "DetectorId" :: (String)
  , "MaxResults" :: NullOrUndefined (MaxResults)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeListIPSetsRequest :: Newtype ListIPSetsRequest _
derive instance repGenericListIPSetsRequest :: Generic ListIPSetsRequest _
instance showListIPSetsRequest :: Show ListIPSetsRequest where show = genericShow
instance decodeListIPSetsRequest :: Decode ListIPSetsRequest where decode = genericDecode options
instance encodeListIPSetsRequest :: Encode ListIPSetsRequest where encode = genericEncode options

-- | Constructs ListIPSetsRequest from required parameters
newListIPSetsRequest :: String -> ListIPSetsRequest
newListIPSetsRequest _DetectorId = ListIPSetsRequest { "DetectorId": _DetectorId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListIPSetsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListIPSetsRequest' :: String -> ( { "DetectorId" :: (String) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (String) } -> {"DetectorId" :: (String) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (String) } ) -> ListIPSetsRequest
newListIPSetsRequest' _DetectorId customize = (ListIPSetsRequest <<< customize) { "DetectorId": _DetectorId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListIPSetsResponse = ListIPSetsResponse 
  { "IpSetIds" :: NullOrUndefined (IpSetIds)
  , "NextToken" :: NullOrUndefined (NextToken)
  }
derive instance newtypeListIPSetsResponse :: Newtype ListIPSetsResponse _
derive instance repGenericListIPSetsResponse :: Generic ListIPSetsResponse _
instance showListIPSetsResponse :: Show ListIPSetsResponse where show = genericShow
instance decodeListIPSetsResponse :: Decode ListIPSetsResponse where decode = genericDecode options
instance encodeListIPSetsResponse :: Encode ListIPSetsResponse where encode = genericEncode options

-- | Constructs ListIPSetsResponse from required parameters
newListIPSetsResponse :: ListIPSetsResponse
newListIPSetsResponse  = ListIPSetsResponse { "IpSetIds": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListIPSetsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListIPSetsResponse' :: ( { "IpSetIds" :: NullOrUndefined (IpSetIds) , "NextToken" :: NullOrUndefined (NextToken) } -> {"IpSetIds" :: NullOrUndefined (IpSetIds) , "NextToken" :: NullOrUndefined (NextToken) } ) -> ListIPSetsResponse
newListIPSetsResponse'  customize = (ListIPSetsResponse <<< customize) { "IpSetIds": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListInvitationsRequest = ListInvitationsRequest 
  { "MaxResults" :: NullOrUndefined (MaxResults)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeListInvitationsRequest :: Newtype ListInvitationsRequest _
derive instance repGenericListInvitationsRequest :: Generic ListInvitationsRequest _
instance showListInvitationsRequest :: Show ListInvitationsRequest where show = genericShow
instance decodeListInvitationsRequest :: Decode ListInvitationsRequest where decode = genericDecode options
instance encodeListInvitationsRequest :: Encode ListInvitationsRequest where encode = genericEncode options

-- | Constructs ListInvitationsRequest from required parameters
newListInvitationsRequest :: ListInvitationsRequest
newListInvitationsRequest  = ListInvitationsRequest { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListInvitationsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListInvitationsRequest' :: ( { "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (String) } -> {"MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (String) } ) -> ListInvitationsRequest
newListInvitationsRequest'  customize = (ListInvitationsRequest <<< customize) { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListInvitationsResponse = ListInvitationsResponse 
  { "Invitations" :: NullOrUndefined (Invitations)
  , "NextToken" :: NullOrUndefined (NextToken)
  }
derive instance newtypeListInvitationsResponse :: Newtype ListInvitationsResponse _
derive instance repGenericListInvitationsResponse :: Generic ListInvitationsResponse _
instance showListInvitationsResponse :: Show ListInvitationsResponse where show = genericShow
instance decodeListInvitationsResponse :: Decode ListInvitationsResponse where decode = genericDecode options
instance encodeListInvitationsResponse :: Encode ListInvitationsResponse where encode = genericEncode options

-- | Constructs ListInvitationsResponse from required parameters
newListInvitationsResponse :: ListInvitationsResponse
newListInvitationsResponse  = ListInvitationsResponse { "Invitations": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListInvitationsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListInvitationsResponse' :: ( { "Invitations" :: NullOrUndefined (Invitations) , "NextToken" :: NullOrUndefined (NextToken) } -> {"Invitations" :: NullOrUndefined (Invitations) , "NextToken" :: NullOrUndefined (NextToken) } ) -> ListInvitationsResponse
newListInvitationsResponse'  customize = (ListInvitationsResponse <<< customize) { "Invitations": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListMembersRequest = ListMembersRequest 
  { "DetectorId" :: (String)
  , "MaxResults" :: NullOrUndefined (MaxResults)
  , "NextToken" :: NullOrUndefined (String)
  , "OnlyAssociated" :: NullOrUndefined (String)
  }
derive instance newtypeListMembersRequest :: Newtype ListMembersRequest _
derive instance repGenericListMembersRequest :: Generic ListMembersRequest _
instance showListMembersRequest :: Show ListMembersRequest where show = genericShow
instance decodeListMembersRequest :: Decode ListMembersRequest where decode = genericDecode options
instance encodeListMembersRequest :: Encode ListMembersRequest where encode = genericEncode options

-- | Constructs ListMembersRequest from required parameters
newListMembersRequest :: String -> ListMembersRequest
newListMembersRequest _DetectorId = ListMembersRequest { "DetectorId": _DetectorId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "OnlyAssociated": (NullOrUndefined Nothing) }

-- | Constructs ListMembersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListMembersRequest' :: String -> ( { "DetectorId" :: (String) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (String) , "OnlyAssociated" :: NullOrUndefined (String) } -> {"DetectorId" :: (String) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (String) , "OnlyAssociated" :: NullOrUndefined (String) } ) -> ListMembersRequest
newListMembersRequest' _DetectorId customize = (ListMembersRequest <<< customize) { "DetectorId": _DetectorId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "OnlyAssociated": (NullOrUndefined Nothing) }



newtype ListMembersResponse = ListMembersResponse 
  { "Members" :: NullOrUndefined (Members)
  , "NextToken" :: NullOrUndefined (NextToken)
  }
derive instance newtypeListMembersResponse :: Newtype ListMembersResponse _
derive instance repGenericListMembersResponse :: Generic ListMembersResponse _
instance showListMembersResponse :: Show ListMembersResponse where show = genericShow
instance decodeListMembersResponse :: Decode ListMembersResponse where decode = genericDecode options
instance encodeListMembersResponse :: Encode ListMembersResponse where encode = genericEncode options

-- | Constructs ListMembersResponse from required parameters
newListMembersResponse :: ListMembersResponse
newListMembersResponse  = ListMembersResponse { "Members": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListMembersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListMembersResponse' :: ( { "Members" :: NullOrUndefined (Members) , "NextToken" :: NullOrUndefined (NextToken) } -> {"Members" :: NullOrUndefined (Members) , "NextToken" :: NullOrUndefined (NextToken) } ) -> ListMembersResponse
newListMembersResponse'  customize = (ListMembersResponse <<< customize) { "Members": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListOfPortProbeDetail = ListOfPortProbeDetail (Array PortProbeDetail)
derive instance newtypeListOfPortProbeDetail :: Newtype ListOfPortProbeDetail _
derive instance repGenericListOfPortProbeDetail :: Generic ListOfPortProbeDetail _
instance showListOfPortProbeDetail :: Show ListOfPortProbeDetail where show = genericShow
instance decodeListOfPortProbeDetail :: Decode ListOfPortProbeDetail where decode = genericDecode options
instance encodeListOfPortProbeDetail :: Encode ListOfPortProbeDetail where encode = genericEncode options



newtype ListThreatIntelSetsRequest = ListThreatIntelSetsRequest 
  { "DetectorId" :: (String)
  , "MaxResults" :: NullOrUndefined (MaxResults)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeListThreatIntelSetsRequest :: Newtype ListThreatIntelSetsRequest _
derive instance repGenericListThreatIntelSetsRequest :: Generic ListThreatIntelSetsRequest _
instance showListThreatIntelSetsRequest :: Show ListThreatIntelSetsRequest where show = genericShow
instance decodeListThreatIntelSetsRequest :: Decode ListThreatIntelSetsRequest where decode = genericDecode options
instance encodeListThreatIntelSetsRequest :: Encode ListThreatIntelSetsRequest where encode = genericEncode options

-- | Constructs ListThreatIntelSetsRequest from required parameters
newListThreatIntelSetsRequest :: String -> ListThreatIntelSetsRequest
newListThreatIntelSetsRequest _DetectorId = ListThreatIntelSetsRequest { "DetectorId": _DetectorId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListThreatIntelSetsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListThreatIntelSetsRequest' :: String -> ( { "DetectorId" :: (String) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (String) } -> {"DetectorId" :: (String) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (String) } ) -> ListThreatIntelSetsRequest
newListThreatIntelSetsRequest' _DetectorId customize = (ListThreatIntelSetsRequest <<< customize) { "DetectorId": _DetectorId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListThreatIntelSetsResponse = ListThreatIntelSetsResponse 
  { "NextToken" :: NullOrUndefined (NextToken)
  , "ThreatIntelSetIds" :: NullOrUndefined (ThreatIntelSetIds)
  }
derive instance newtypeListThreatIntelSetsResponse :: Newtype ListThreatIntelSetsResponse _
derive instance repGenericListThreatIntelSetsResponse :: Generic ListThreatIntelSetsResponse _
instance showListThreatIntelSetsResponse :: Show ListThreatIntelSetsResponse where show = genericShow
instance decodeListThreatIntelSetsResponse :: Decode ListThreatIntelSetsResponse where decode = genericDecode options
instance encodeListThreatIntelSetsResponse :: Encode ListThreatIntelSetsResponse where encode = genericEncode options

-- | Constructs ListThreatIntelSetsResponse from required parameters
newListThreatIntelSetsResponse :: ListThreatIntelSetsResponse
newListThreatIntelSetsResponse  = ListThreatIntelSetsResponse { "NextToken": (NullOrUndefined Nothing), "ThreatIntelSetIds": (NullOrUndefined Nothing) }

-- | Constructs ListThreatIntelSetsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListThreatIntelSetsResponse' :: ( { "NextToken" :: NullOrUndefined (NextToken) , "ThreatIntelSetIds" :: NullOrUndefined (ThreatIntelSetIds) } -> {"NextToken" :: NullOrUndefined (NextToken) , "ThreatIntelSetIds" :: NullOrUndefined (ThreatIntelSetIds) } ) -> ListThreatIntelSetsResponse
newListThreatIntelSetsResponse'  customize = (ListThreatIntelSetsResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "ThreatIntelSetIds": (NullOrUndefined Nothing) }



-- | Local port information of the connection.
newtype LocalPortDetails = LocalPortDetails 
  { "Port" :: NullOrUndefined (Int)
  , "PortName" :: NullOrUndefined (String)
  }
derive instance newtypeLocalPortDetails :: Newtype LocalPortDetails _
derive instance repGenericLocalPortDetails :: Generic LocalPortDetails _
instance showLocalPortDetails :: Show LocalPortDetails where show = genericShow
instance decodeLocalPortDetails :: Decode LocalPortDetails where decode = genericDecode options
instance encodeLocalPortDetails :: Encode LocalPortDetails where encode = genericEncode options

-- | Constructs LocalPortDetails from required parameters
newLocalPortDetails :: LocalPortDetails
newLocalPortDetails  = LocalPortDetails { "Port": (NullOrUndefined Nothing), "PortName": (NullOrUndefined Nothing) }

-- | Constructs LocalPortDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLocalPortDetails' :: ( { "Port" :: NullOrUndefined (Int) , "PortName" :: NullOrUndefined (String) } -> {"Port" :: NullOrUndefined (Int) , "PortName" :: NullOrUndefined (String) } ) -> LocalPortDetails
newLocalPortDetails'  customize = (LocalPortDetails <<< customize) { "Port": (NullOrUndefined Nothing), "PortName": (NullOrUndefined Nothing) }



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
  { "AccountId" :: NullOrUndefined (String)
  , "InvitationId" :: NullOrUndefined (InvitationId)
  , "InvitedAt" :: NullOrUndefined (InvitedAt)
  , "RelationshipStatus" :: NullOrUndefined (String)
  }
derive instance newtypeMaster :: Newtype Master _
derive instance repGenericMaster :: Generic Master _
instance showMaster :: Show Master where show = genericShow
instance decodeMaster :: Decode Master where decode = genericDecode options
instance encodeMaster :: Encode Master where encode = genericEncode options

-- | Constructs Master from required parameters
newMaster :: Master
newMaster  = Master { "AccountId": (NullOrUndefined Nothing), "InvitationId": (NullOrUndefined Nothing), "InvitedAt": (NullOrUndefined Nothing), "RelationshipStatus": (NullOrUndefined Nothing) }

-- | Constructs Master's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMaster' :: ( { "AccountId" :: NullOrUndefined (String) , "InvitationId" :: NullOrUndefined (InvitationId) , "InvitedAt" :: NullOrUndefined (InvitedAt) , "RelationshipStatus" :: NullOrUndefined (String) } -> {"AccountId" :: NullOrUndefined (String) , "InvitationId" :: NullOrUndefined (InvitationId) , "InvitedAt" :: NullOrUndefined (InvitedAt) , "RelationshipStatus" :: NullOrUndefined (String) } ) -> Master
newMaster'  customize = (Master <<< customize) { "AccountId": (NullOrUndefined Nothing), "InvitationId": (NullOrUndefined Nothing), "InvitedAt": (NullOrUndefined Nothing), "RelationshipStatus": (NullOrUndefined Nothing) }



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
  { "AccountId" :: NullOrUndefined (AccountId)
  , "DetectorId" :: NullOrUndefined (DetectorId)
  , "Email" :: NullOrUndefined (Email)
  , "InvitedAt" :: NullOrUndefined (InvitedAt)
  , "MasterId" :: NullOrUndefined (MasterId)
  , "RelationshipStatus" :: NullOrUndefined (String)
  , "UpdatedAt" :: NullOrUndefined (UpdatedAt)
  }
derive instance newtypeMember :: Newtype Member _
derive instance repGenericMember :: Generic Member _
instance showMember :: Show Member where show = genericShow
instance decodeMember :: Decode Member where decode = genericDecode options
instance encodeMember :: Encode Member where encode = genericEncode options

-- | Constructs Member from required parameters
newMember :: Member
newMember  = Member { "AccountId": (NullOrUndefined Nothing), "DetectorId": (NullOrUndefined Nothing), "Email": (NullOrUndefined Nothing), "InvitedAt": (NullOrUndefined Nothing), "MasterId": (NullOrUndefined Nothing), "RelationshipStatus": (NullOrUndefined Nothing), "UpdatedAt": (NullOrUndefined Nothing) }

-- | Constructs Member's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMember' :: ( { "AccountId" :: NullOrUndefined (AccountId) , "DetectorId" :: NullOrUndefined (DetectorId) , "Email" :: NullOrUndefined (Email) , "InvitedAt" :: NullOrUndefined (InvitedAt) , "MasterId" :: NullOrUndefined (MasterId) , "RelationshipStatus" :: NullOrUndefined (String) , "UpdatedAt" :: NullOrUndefined (UpdatedAt) } -> {"AccountId" :: NullOrUndefined (AccountId) , "DetectorId" :: NullOrUndefined (DetectorId) , "Email" :: NullOrUndefined (Email) , "InvitedAt" :: NullOrUndefined (InvitedAt) , "MasterId" :: NullOrUndefined (MasterId) , "RelationshipStatus" :: NullOrUndefined (String) , "UpdatedAt" :: NullOrUndefined (UpdatedAt) } ) -> Member
newMember'  customize = (Member <<< customize) { "AccountId": (NullOrUndefined Nothing), "DetectorId": (NullOrUndefined Nothing), "Email": (NullOrUndefined Nothing), "InvitedAt": (NullOrUndefined Nothing), "MasterId": (NullOrUndefined Nothing), "RelationshipStatus": (NullOrUndefined Nothing), "UpdatedAt": (NullOrUndefined Nothing) }



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
  { "Blocked" :: NullOrUndefined (Boolean)
  , "ConnectionDirection" :: NullOrUndefined (String)
  , "LocalPortDetails" :: NullOrUndefined (LocalPortDetails)
  , "Protocol" :: NullOrUndefined (String)
  , "RemoteIpDetails" :: NullOrUndefined (RemoteIpDetails)
  , "RemotePortDetails" :: NullOrUndefined (RemotePortDetails)
  }
derive instance newtypeNetworkConnectionAction :: Newtype NetworkConnectionAction _
derive instance repGenericNetworkConnectionAction :: Generic NetworkConnectionAction _
instance showNetworkConnectionAction :: Show NetworkConnectionAction where show = genericShow
instance decodeNetworkConnectionAction :: Decode NetworkConnectionAction where decode = genericDecode options
instance encodeNetworkConnectionAction :: Encode NetworkConnectionAction where encode = genericEncode options

-- | Constructs NetworkConnectionAction from required parameters
newNetworkConnectionAction :: NetworkConnectionAction
newNetworkConnectionAction  = NetworkConnectionAction { "Blocked": (NullOrUndefined Nothing), "ConnectionDirection": (NullOrUndefined Nothing), "LocalPortDetails": (NullOrUndefined Nothing), "Protocol": (NullOrUndefined Nothing), "RemoteIpDetails": (NullOrUndefined Nothing), "RemotePortDetails": (NullOrUndefined Nothing) }

-- | Constructs NetworkConnectionAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNetworkConnectionAction' :: ( { "Blocked" :: NullOrUndefined (Boolean) , "ConnectionDirection" :: NullOrUndefined (String) , "LocalPortDetails" :: NullOrUndefined (LocalPortDetails) , "Protocol" :: NullOrUndefined (String) , "RemoteIpDetails" :: NullOrUndefined (RemoteIpDetails) , "RemotePortDetails" :: NullOrUndefined (RemotePortDetails) } -> {"Blocked" :: NullOrUndefined (Boolean) , "ConnectionDirection" :: NullOrUndefined (String) , "LocalPortDetails" :: NullOrUndefined (LocalPortDetails) , "Protocol" :: NullOrUndefined (String) , "RemoteIpDetails" :: NullOrUndefined (RemoteIpDetails) , "RemotePortDetails" :: NullOrUndefined (RemotePortDetails) } ) -> NetworkConnectionAction
newNetworkConnectionAction'  customize = (NetworkConnectionAction <<< customize) { "Blocked": (NullOrUndefined Nothing), "ConnectionDirection": (NullOrUndefined Nothing), "LocalPortDetails": (NullOrUndefined Nothing), "Protocol": (NullOrUndefined Nothing), "RemoteIpDetails": (NullOrUndefined Nothing), "RemotePortDetails": (NullOrUndefined Nothing) }



-- | The network interface information of the EC2 instance.
newtype NetworkInterface = NetworkInterface 
  { "Ipv6Addresses" :: NullOrUndefined (Ipv6Addresses)
  , "PrivateDnsName" :: NullOrUndefined (PrivateDnsName)
  , "PrivateIpAddress" :: NullOrUndefined (PrivateIpAddress)
  , "PrivateIpAddresses" :: NullOrUndefined (PrivateIpAddresses)
  , "PublicDnsName" :: NullOrUndefined (String)
  , "PublicIp" :: NullOrUndefined (String)
  , "SecurityGroups" :: NullOrUndefined (SecurityGroups)
  , "SubnetId" :: NullOrUndefined (String)
  , "VpcId" :: NullOrUndefined (String)
  }
derive instance newtypeNetworkInterface :: Newtype NetworkInterface _
derive instance repGenericNetworkInterface :: Generic NetworkInterface _
instance showNetworkInterface :: Show NetworkInterface where show = genericShow
instance decodeNetworkInterface :: Decode NetworkInterface where decode = genericDecode options
instance encodeNetworkInterface :: Encode NetworkInterface where encode = genericEncode options

-- | Constructs NetworkInterface from required parameters
newNetworkInterface :: NetworkInterface
newNetworkInterface  = NetworkInterface { "Ipv6Addresses": (NullOrUndefined Nothing), "PrivateDnsName": (NullOrUndefined Nothing), "PrivateIpAddress": (NullOrUndefined Nothing), "PrivateIpAddresses": (NullOrUndefined Nothing), "PublicDnsName": (NullOrUndefined Nothing), "PublicIp": (NullOrUndefined Nothing), "SecurityGroups": (NullOrUndefined Nothing), "SubnetId": (NullOrUndefined Nothing), "VpcId": (NullOrUndefined Nothing) }

-- | Constructs NetworkInterface's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNetworkInterface' :: ( { "Ipv6Addresses" :: NullOrUndefined (Ipv6Addresses) , "PrivateDnsName" :: NullOrUndefined (PrivateDnsName) , "PrivateIpAddress" :: NullOrUndefined (PrivateIpAddress) , "PrivateIpAddresses" :: NullOrUndefined (PrivateIpAddresses) , "PublicDnsName" :: NullOrUndefined (String) , "PublicIp" :: NullOrUndefined (String) , "SecurityGroups" :: NullOrUndefined (SecurityGroups) , "SubnetId" :: NullOrUndefined (String) , "VpcId" :: NullOrUndefined (String) } -> {"Ipv6Addresses" :: NullOrUndefined (Ipv6Addresses) , "PrivateDnsName" :: NullOrUndefined (PrivateDnsName) , "PrivateIpAddress" :: NullOrUndefined (PrivateIpAddress) , "PrivateIpAddresses" :: NullOrUndefined (PrivateIpAddresses) , "PublicDnsName" :: NullOrUndefined (String) , "PublicIp" :: NullOrUndefined (String) , "SecurityGroups" :: NullOrUndefined (SecurityGroups) , "SubnetId" :: NullOrUndefined (String) , "VpcId" :: NullOrUndefined (String) } ) -> NetworkInterface
newNetworkInterface'  customize = (NetworkInterface <<< customize) { "Ipv6Addresses": (NullOrUndefined Nothing), "PrivateDnsName": (NullOrUndefined Nothing), "PrivateIpAddress": (NullOrUndefined Nothing), "PrivateIpAddresses": (NullOrUndefined Nothing), "PublicDnsName": (NullOrUndefined Nothing), "PublicIp": (NullOrUndefined Nothing), "SecurityGroups": (NullOrUndefined Nothing), "SubnetId": (NullOrUndefined Nothing), "VpcId": (NullOrUndefined Nothing) }



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
  { "Asn" :: NullOrUndefined (String)
  , "AsnOrg" :: NullOrUndefined (String)
  , "Isp" :: NullOrUndefined (String)
  , "Org" :: NullOrUndefined (String)
  }
derive instance newtypeOrganization :: Newtype Organization _
derive instance repGenericOrganization :: Generic Organization _
instance showOrganization :: Show Organization where show = genericShow
instance decodeOrganization :: Decode Organization where decode = genericDecode options
instance encodeOrganization :: Encode Organization where encode = genericEncode options

-- | Constructs Organization from required parameters
newOrganization :: Organization
newOrganization  = Organization { "Asn": (NullOrUndefined Nothing), "AsnOrg": (NullOrUndefined Nothing), "Isp": (NullOrUndefined Nothing), "Org": (NullOrUndefined Nothing) }

-- | Constructs Organization's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOrganization' :: ( { "Asn" :: NullOrUndefined (String) , "AsnOrg" :: NullOrUndefined (String) , "Isp" :: NullOrUndefined (String) , "Org" :: NullOrUndefined (String) } -> {"Asn" :: NullOrUndefined (String) , "AsnOrg" :: NullOrUndefined (String) , "Isp" :: NullOrUndefined (String) , "Org" :: NullOrUndefined (String) } ) -> Organization
newOrganization'  customize = (Organization <<< customize) { "Asn": (NullOrUndefined Nothing), "AsnOrg": (NullOrUndefined Nothing), "Isp": (NullOrUndefined Nothing), "Org": (NullOrUndefined Nothing) }



-- | Information about the PORT_PROBE action described in this finding.
newtype PortProbeAction = PortProbeAction 
  { "Blocked" :: NullOrUndefined (Boolean)
  , "PortProbeDetails" :: NullOrUndefined (ListOfPortProbeDetail)
  }
derive instance newtypePortProbeAction :: Newtype PortProbeAction _
derive instance repGenericPortProbeAction :: Generic PortProbeAction _
instance showPortProbeAction :: Show PortProbeAction where show = genericShow
instance decodePortProbeAction :: Decode PortProbeAction where decode = genericDecode options
instance encodePortProbeAction :: Encode PortProbeAction where encode = genericEncode options

-- | Constructs PortProbeAction from required parameters
newPortProbeAction :: PortProbeAction
newPortProbeAction  = PortProbeAction { "Blocked": (NullOrUndefined Nothing), "PortProbeDetails": (NullOrUndefined Nothing) }

-- | Constructs PortProbeAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPortProbeAction' :: ( { "Blocked" :: NullOrUndefined (Boolean) , "PortProbeDetails" :: NullOrUndefined (ListOfPortProbeDetail) } -> {"Blocked" :: NullOrUndefined (Boolean) , "PortProbeDetails" :: NullOrUndefined (ListOfPortProbeDetail) } ) -> PortProbeAction
newPortProbeAction'  customize = (PortProbeAction <<< customize) { "Blocked": (NullOrUndefined Nothing), "PortProbeDetails": (NullOrUndefined Nothing) }



-- | Details about the port probe finding.
newtype PortProbeDetail = PortProbeDetail 
  { "LocalPortDetails" :: NullOrUndefined (LocalPortDetails)
  , "RemoteIpDetails" :: NullOrUndefined (RemoteIpDetails)
  }
derive instance newtypePortProbeDetail :: Newtype PortProbeDetail _
derive instance repGenericPortProbeDetail :: Generic PortProbeDetail _
instance showPortProbeDetail :: Show PortProbeDetail where show = genericShow
instance decodePortProbeDetail :: Decode PortProbeDetail where decode = genericDecode options
instance encodePortProbeDetail :: Encode PortProbeDetail where encode = genericEncode options

-- | Constructs PortProbeDetail from required parameters
newPortProbeDetail :: PortProbeDetail
newPortProbeDetail  = PortProbeDetail { "LocalPortDetails": (NullOrUndefined Nothing), "RemoteIpDetails": (NullOrUndefined Nothing) }

-- | Constructs PortProbeDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPortProbeDetail' :: ( { "LocalPortDetails" :: NullOrUndefined (LocalPortDetails) , "RemoteIpDetails" :: NullOrUndefined (RemoteIpDetails) } -> {"LocalPortDetails" :: NullOrUndefined (LocalPortDetails) , "RemoteIpDetails" :: NullOrUndefined (RemoteIpDetails) } ) -> PortProbeDetail
newPortProbeDetail'  customize = (PortProbeDetail <<< customize) { "LocalPortDetails": (NullOrUndefined Nothing), "RemoteIpDetails": (NullOrUndefined Nothing) }



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
  { "PrivateDnsName" :: NullOrUndefined (PrivateDnsName)
  , "PrivateIpAddress" :: NullOrUndefined (PrivateIpAddress)
  }
derive instance newtypePrivateIpAddressDetails :: Newtype PrivateIpAddressDetails _
derive instance repGenericPrivateIpAddressDetails :: Generic PrivateIpAddressDetails _
instance showPrivateIpAddressDetails :: Show PrivateIpAddressDetails where show = genericShow
instance decodePrivateIpAddressDetails :: Decode PrivateIpAddressDetails where decode = genericDecode options
instance encodePrivateIpAddressDetails :: Encode PrivateIpAddressDetails where encode = genericEncode options

-- | Constructs PrivateIpAddressDetails from required parameters
newPrivateIpAddressDetails :: PrivateIpAddressDetails
newPrivateIpAddressDetails  = PrivateIpAddressDetails { "PrivateDnsName": (NullOrUndefined Nothing), "PrivateIpAddress": (NullOrUndefined Nothing) }

-- | Constructs PrivateIpAddressDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPrivateIpAddressDetails' :: ( { "PrivateDnsName" :: NullOrUndefined (PrivateDnsName) , "PrivateIpAddress" :: NullOrUndefined (PrivateIpAddress) } -> {"PrivateDnsName" :: NullOrUndefined (PrivateDnsName) , "PrivateIpAddress" :: NullOrUndefined (PrivateIpAddress) } ) -> PrivateIpAddressDetails
newPrivateIpAddressDetails'  customize = (PrivateIpAddressDetails <<< customize) { "PrivateDnsName": (NullOrUndefined Nothing), "PrivateIpAddress": (NullOrUndefined Nothing) }



-- | Other private IP address information of the EC2 instance.
newtype PrivateIpAddresses = PrivateIpAddresses (Array PrivateIpAddressDetails)
derive instance newtypePrivateIpAddresses :: Newtype PrivateIpAddresses _
derive instance repGenericPrivateIpAddresses :: Generic PrivateIpAddresses _
instance showPrivateIpAddresses :: Show PrivateIpAddresses where show = genericShow
instance decodePrivateIpAddresses :: Decode PrivateIpAddresses where decode = genericDecode options
instance encodePrivateIpAddresses :: Encode PrivateIpAddresses where encode = genericEncode options



-- | The product code of the EC2 instance.
newtype ProductCode = ProductCode 
  { "Code" :: NullOrUndefined (String)
  , "ProductType" :: NullOrUndefined (String)
  }
derive instance newtypeProductCode :: Newtype ProductCode _
derive instance repGenericProductCode :: Generic ProductCode _
instance showProductCode :: Show ProductCode where show = genericShow
instance decodeProductCode :: Decode ProductCode where decode = genericDecode options
instance encodeProductCode :: Encode ProductCode where encode = genericEncode options

-- | Constructs ProductCode from required parameters
newProductCode :: ProductCode
newProductCode  = ProductCode { "Code": (NullOrUndefined Nothing), "ProductType": (NullOrUndefined Nothing) }

-- | Constructs ProductCode's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newProductCode' :: ( { "Code" :: NullOrUndefined (String) , "ProductType" :: NullOrUndefined (String) } -> {"Code" :: NullOrUndefined (String) , "ProductType" :: NullOrUndefined (String) } ) -> ProductCode
newProductCode'  customize = (ProductCode <<< customize) { "Code": (NullOrUndefined Nothing), "ProductType": (NullOrUndefined Nothing) }



-- | The product code of the EC2 instance.
newtype ProductCodes = ProductCodes (Array ProductCode)
derive instance newtypeProductCodes :: Newtype ProductCodes _
derive instance repGenericProductCodes :: Generic ProductCodes _
instance showProductCodes :: Show ProductCodes where show = genericShow
instance decodeProductCodes :: Decode ProductCodes where decode = genericDecode options
instance encodeProductCodes :: Encode ProductCodes where encode = genericEncode options



-- | Remote IP information of the connection.
newtype RemoteIpDetails = RemoteIpDetails 
  { "City" :: NullOrUndefined (City)
  , "Country" :: NullOrUndefined (Country)
  , "GeoLocation" :: NullOrUndefined (GeoLocation)
  , "IpAddressV4" :: NullOrUndefined (String)
  , "Organization" :: NullOrUndefined (Organization)
  }
derive instance newtypeRemoteIpDetails :: Newtype RemoteIpDetails _
derive instance repGenericRemoteIpDetails :: Generic RemoteIpDetails _
instance showRemoteIpDetails :: Show RemoteIpDetails where show = genericShow
instance decodeRemoteIpDetails :: Decode RemoteIpDetails where decode = genericDecode options
instance encodeRemoteIpDetails :: Encode RemoteIpDetails where encode = genericEncode options

-- | Constructs RemoteIpDetails from required parameters
newRemoteIpDetails :: RemoteIpDetails
newRemoteIpDetails  = RemoteIpDetails { "City": (NullOrUndefined Nothing), "Country": (NullOrUndefined Nothing), "GeoLocation": (NullOrUndefined Nothing), "IpAddressV4": (NullOrUndefined Nothing), "Organization": (NullOrUndefined Nothing) }

-- | Constructs RemoteIpDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRemoteIpDetails' :: ( { "City" :: NullOrUndefined (City) , "Country" :: NullOrUndefined (Country) , "GeoLocation" :: NullOrUndefined (GeoLocation) , "IpAddressV4" :: NullOrUndefined (String) , "Organization" :: NullOrUndefined (Organization) } -> {"City" :: NullOrUndefined (City) , "Country" :: NullOrUndefined (Country) , "GeoLocation" :: NullOrUndefined (GeoLocation) , "IpAddressV4" :: NullOrUndefined (String) , "Organization" :: NullOrUndefined (Organization) } ) -> RemoteIpDetails
newRemoteIpDetails'  customize = (RemoteIpDetails <<< customize) { "City": (NullOrUndefined Nothing), "Country": (NullOrUndefined Nothing), "GeoLocation": (NullOrUndefined Nothing), "IpAddressV4": (NullOrUndefined Nothing), "Organization": (NullOrUndefined Nothing) }



-- | Remote port information of the connection.
newtype RemotePortDetails = RemotePortDetails 
  { "Port" :: NullOrUndefined (Int)
  , "PortName" :: NullOrUndefined (String)
  }
derive instance newtypeRemotePortDetails :: Newtype RemotePortDetails _
derive instance repGenericRemotePortDetails :: Generic RemotePortDetails _
instance showRemotePortDetails :: Show RemotePortDetails where show = genericShow
instance decodeRemotePortDetails :: Decode RemotePortDetails where decode = genericDecode options
instance encodeRemotePortDetails :: Encode RemotePortDetails where encode = genericEncode options

-- | Constructs RemotePortDetails from required parameters
newRemotePortDetails :: RemotePortDetails
newRemotePortDetails  = RemotePortDetails { "Port": (NullOrUndefined Nothing), "PortName": (NullOrUndefined Nothing) }

-- | Constructs RemotePortDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRemotePortDetails' :: ( { "Port" :: NullOrUndefined (Int) , "PortName" :: NullOrUndefined (String) } -> {"Port" :: NullOrUndefined (Int) , "PortName" :: NullOrUndefined (String) } ) -> RemotePortDetails
newRemotePortDetails'  customize = (RemotePortDetails <<< customize) { "Port": (NullOrUndefined Nothing), "PortName": (NullOrUndefined Nothing) }



-- | The AWS resource associated with the activity that prompted GuardDuty to generate a finding.
newtype Resource = Resource 
  { "AccessKeyDetails" :: NullOrUndefined (AccessKeyDetails)
  , "InstanceDetails" :: NullOrUndefined (InstanceDetails)
  , "ResourceType" :: NullOrUndefined (String)
  }
derive instance newtypeResource :: Newtype Resource _
derive instance repGenericResource :: Generic Resource _
instance showResource :: Show Resource where show = genericShow
instance decodeResource :: Decode Resource where decode = genericDecode options
instance encodeResource :: Encode Resource where encode = genericEncode options

-- | Constructs Resource from required parameters
newResource :: Resource
newResource  = Resource { "AccessKeyDetails": (NullOrUndefined Nothing), "InstanceDetails": (NullOrUndefined Nothing), "ResourceType": (NullOrUndefined Nothing) }

-- | Constructs Resource's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResource' :: ( { "AccessKeyDetails" :: NullOrUndefined (AccessKeyDetails) , "InstanceDetails" :: NullOrUndefined (InstanceDetails) , "ResourceType" :: NullOrUndefined (String) } -> {"AccessKeyDetails" :: NullOrUndefined (AccessKeyDetails) , "InstanceDetails" :: NullOrUndefined (InstanceDetails) , "ResourceType" :: NullOrUndefined (String) } ) -> Resource
newResource'  customize = (Resource <<< customize) { "AccessKeyDetails": (NullOrUndefined Nothing), "InstanceDetails": (NullOrUndefined Nothing), "ResourceType": (NullOrUndefined Nothing) }



-- | Security groups associated with the EC2 instance.
newtype SecurityGroup = SecurityGroup 
  { "GroupId" :: NullOrUndefined (String)
  , "GroupName" :: NullOrUndefined (String)
  }
derive instance newtypeSecurityGroup :: Newtype SecurityGroup _
derive instance repGenericSecurityGroup :: Generic SecurityGroup _
instance showSecurityGroup :: Show SecurityGroup where show = genericShow
instance decodeSecurityGroup :: Decode SecurityGroup where decode = genericDecode options
instance encodeSecurityGroup :: Encode SecurityGroup where encode = genericEncode options

-- | Constructs SecurityGroup from required parameters
newSecurityGroup :: SecurityGroup
newSecurityGroup  = SecurityGroup { "GroupId": (NullOrUndefined Nothing), "GroupName": (NullOrUndefined Nothing) }

-- | Constructs SecurityGroup's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSecurityGroup' :: ( { "GroupId" :: NullOrUndefined (String) , "GroupName" :: NullOrUndefined (String) } -> {"GroupId" :: NullOrUndefined (String) , "GroupName" :: NullOrUndefined (String) } ) -> SecurityGroup
newSecurityGroup'  customize = (SecurityGroup <<< customize) { "GroupId": (NullOrUndefined Nothing), "GroupName": (NullOrUndefined Nothing) }



-- | Security groups associated with the EC2 instance.
newtype SecurityGroups = SecurityGroups (Array SecurityGroup)
derive instance newtypeSecurityGroups :: Newtype SecurityGroups _
derive instance repGenericSecurityGroups :: Generic SecurityGroups _
instance showSecurityGroups :: Show SecurityGroups where show = genericShow
instance decodeSecurityGroups :: Decode SecurityGroups where decode = genericDecode options
instance encodeSecurityGroups :: Encode SecurityGroups where encode = genericEncode options



-- | Additional information assigned to the generated finding by GuardDuty.
newtype Service = Service 
  { "Action" :: NullOrUndefined (Action)
  , "Archived" :: NullOrUndefined (Boolean)
  , "Count" :: NullOrUndefined (Int)
  , "DetectorId" :: NullOrUndefined (DetectorId)
  , "EventFirstSeen" :: NullOrUndefined (String)
  , "EventLastSeen" :: NullOrUndefined (String)
  , "ResourceRole" :: NullOrUndefined (String)
  , "ServiceName" :: NullOrUndefined (String)
  , "UserFeedback" :: NullOrUndefined (String)
  }
derive instance newtypeService :: Newtype Service _
derive instance repGenericService :: Generic Service _
instance showService :: Show Service where show = genericShow
instance decodeService :: Decode Service where decode = genericDecode options
instance encodeService :: Encode Service where encode = genericEncode options

-- | Constructs Service from required parameters
newService :: Service
newService  = Service { "Action": (NullOrUndefined Nothing), "Archived": (NullOrUndefined Nothing), "Count": (NullOrUndefined Nothing), "DetectorId": (NullOrUndefined Nothing), "EventFirstSeen": (NullOrUndefined Nothing), "EventLastSeen": (NullOrUndefined Nothing), "ResourceRole": (NullOrUndefined Nothing), "ServiceName": (NullOrUndefined Nothing), "UserFeedback": (NullOrUndefined Nothing) }

-- | Constructs Service's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newService' :: ( { "Action" :: NullOrUndefined (Action) , "Archived" :: NullOrUndefined (Boolean) , "Count" :: NullOrUndefined (Int) , "DetectorId" :: NullOrUndefined (DetectorId) , "EventFirstSeen" :: NullOrUndefined (String) , "EventLastSeen" :: NullOrUndefined (String) , "ResourceRole" :: NullOrUndefined (String) , "ServiceName" :: NullOrUndefined (String) , "UserFeedback" :: NullOrUndefined (String) } -> {"Action" :: NullOrUndefined (Action) , "Archived" :: NullOrUndefined (Boolean) , "Count" :: NullOrUndefined (Int) , "DetectorId" :: NullOrUndefined (DetectorId) , "EventFirstSeen" :: NullOrUndefined (String) , "EventLastSeen" :: NullOrUndefined (String) , "ResourceRole" :: NullOrUndefined (String) , "ServiceName" :: NullOrUndefined (String) , "UserFeedback" :: NullOrUndefined (String) } ) -> Service
newService'  customize = (Service <<< customize) { "Action": (NullOrUndefined Nothing), "Archived": (NullOrUndefined Nothing), "Count": (NullOrUndefined Nothing), "DetectorId": (NullOrUndefined Nothing), "EventFirstSeen": (NullOrUndefined Nothing), "EventLastSeen": (NullOrUndefined Nothing), "ResourceRole": (NullOrUndefined Nothing), "ServiceName": (NullOrUndefined Nothing), "UserFeedback": (NullOrUndefined Nothing) }



-- | Customer serviceRole name or ARN for accessing customer resources
newtype ServiceRole = ServiceRole String
derive instance newtypeServiceRole :: Newtype ServiceRole _
derive instance repGenericServiceRole :: Generic ServiceRole _
instance showServiceRole :: Show ServiceRole where show = genericShow
instance decodeServiceRole :: Decode ServiceRole where decode = genericDecode options
instance encodeServiceRole :: Encode ServiceRole where encode = genericEncode options



-- | Represents the criteria used for sorting findings.
newtype SortCriteria = SortCriteria 
  { "AttributeName" :: NullOrUndefined (String)
  , "OrderBy" :: NullOrUndefined (OrderBy)
  }
derive instance newtypeSortCriteria :: Newtype SortCriteria _
derive instance repGenericSortCriteria :: Generic SortCriteria _
instance showSortCriteria :: Show SortCriteria where show = genericShow
instance decodeSortCriteria :: Decode SortCriteria where decode = genericDecode options
instance encodeSortCriteria :: Encode SortCriteria where encode = genericEncode options

-- | Constructs SortCriteria from required parameters
newSortCriteria :: SortCriteria
newSortCriteria  = SortCriteria { "AttributeName": (NullOrUndefined Nothing), "OrderBy": (NullOrUndefined Nothing) }

-- | Constructs SortCriteria's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSortCriteria' :: ( { "AttributeName" :: NullOrUndefined (String) , "OrderBy" :: NullOrUndefined (OrderBy) } -> {"AttributeName" :: NullOrUndefined (String) , "OrderBy" :: NullOrUndefined (OrderBy) } ) -> SortCriteria
newSortCriteria'  customize = (SortCriteria <<< customize) { "AttributeName": (NullOrUndefined Nothing), "OrderBy": (NullOrUndefined Nothing) }



-- | StartMonitoringMembers request body.
newtype StartMonitoringMembersRequest = StartMonitoringMembersRequest 
  { "AccountIds" :: NullOrUndefined (AccountIds)
  , "DetectorId" :: (String)
  }
derive instance newtypeStartMonitoringMembersRequest :: Newtype StartMonitoringMembersRequest _
derive instance repGenericStartMonitoringMembersRequest :: Generic StartMonitoringMembersRequest _
instance showStartMonitoringMembersRequest :: Show StartMonitoringMembersRequest where show = genericShow
instance decodeStartMonitoringMembersRequest :: Decode StartMonitoringMembersRequest where decode = genericDecode options
instance encodeStartMonitoringMembersRequest :: Encode StartMonitoringMembersRequest where encode = genericEncode options

-- | Constructs StartMonitoringMembersRequest from required parameters
newStartMonitoringMembersRequest :: String -> StartMonitoringMembersRequest
newStartMonitoringMembersRequest _DetectorId = StartMonitoringMembersRequest { "DetectorId": _DetectorId, "AccountIds": (NullOrUndefined Nothing) }

-- | Constructs StartMonitoringMembersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartMonitoringMembersRequest' :: String -> ( { "AccountIds" :: NullOrUndefined (AccountIds) , "DetectorId" :: (String) } -> {"AccountIds" :: NullOrUndefined (AccountIds) , "DetectorId" :: (String) } ) -> StartMonitoringMembersRequest
newStartMonitoringMembersRequest' _DetectorId customize = (StartMonitoringMembersRequest <<< customize) { "DetectorId": _DetectorId, "AccountIds": (NullOrUndefined Nothing) }



newtype StartMonitoringMembersResponse = StartMonitoringMembersResponse 
  { "UnprocessedAccounts" :: NullOrUndefined (UnprocessedAccounts)
  }
derive instance newtypeStartMonitoringMembersResponse :: Newtype StartMonitoringMembersResponse _
derive instance repGenericStartMonitoringMembersResponse :: Generic StartMonitoringMembersResponse _
instance showStartMonitoringMembersResponse :: Show StartMonitoringMembersResponse where show = genericShow
instance decodeStartMonitoringMembersResponse :: Decode StartMonitoringMembersResponse where decode = genericDecode options
instance encodeStartMonitoringMembersResponse :: Encode StartMonitoringMembersResponse where encode = genericEncode options

-- | Constructs StartMonitoringMembersResponse from required parameters
newStartMonitoringMembersResponse :: StartMonitoringMembersResponse
newStartMonitoringMembersResponse  = StartMonitoringMembersResponse { "UnprocessedAccounts": (NullOrUndefined Nothing) }

-- | Constructs StartMonitoringMembersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartMonitoringMembersResponse' :: ( { "UnprocessedAccounts" :: NullOrUndefined (UnprocessedAccounts) } -> {"UnprocessedAccounts" :: NullOrUndefined (UnprocessedAccounts) } ) -> StartMonitoringMembersResponse
newStartMonitoringMembersResponse'  customize = (StartMonitoringMembersResponse <<< customize) { "UnprocessedAccounts": (NullOrUndefined Nothing) }



-- | StopMonitoringMembers request body.
newtype StopMonitoringMembersRequest = StopMonitoringMembersRequest 
  { "AccountIds" :: NullOrUndefined (AccountIds)
  , "DetectorId" :: (String)
  }
derive instance newtypeStopMonitoringMembersRequest :: Newtype StopMonitoringMembersRequest _
derive instance repGenericStopMonitoringMembersRequest :: Generic StopMonitoringMembersRequest _
instance showStopMonitoringMembersRequest :: Show StopMonitoringMembersRequest where show = genericShow
instance decodeStopMonitoringMembersRequest :: Decode StopMonitoringMembersRequest where decode = genericDecode options
instance encodeStopMonitoringMembersRequest :: Encode StopMonitoringMembersRequest where encode = genericEncode options

-- | Constructs StopMonitoringMembersRequest from required parameters
newStopMonitoringMembersRequest :: String -> StopMonitoringMembersRequest
newStopMonitoringMembersRequest _DetectorId = StopMonitoringMembersRequest { "DetectorId": _DetectorId, "AccountIds": (NullOrUndefined Nothing) }

-- | Constructs StopMonitoringMembersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStopMonitoringMembersRequest' :: String -> ( { "AccountIds" :: NullOrUndefined (AccountIds) , "DetectorId" :: (String) } -> {"AccountIds" :: NullOrUndefined (AccountIds) , "DetectorId" :: (String) } ) -> StopMonitoringMembersRequest
newStopMonitoringMembersRequest' _DetectorId customize = (StopMonitoringMembersRequest <<< customize) { "DetectorId": _DetectorId, "AccountIds": (NullOrUndefined Nothing) }



newtype StopMonitoringMembersResponse = StopMonitoringMembersResponse 
  { "UnprocessedAccounts" :: NullOrUndefined (UnprocessedAccounts)
  }
derive instance newtypeStopMonitoringMembersResponse :: Newtype StopMonitoringMembersResponse _
derive instance repGenericStopMonitoringMembersResponse :: Generic StopMonitoringMembersResponse _
instance showStopMonitoringMembersResponse :: Show StopMonitoringMembersResponse where show = genericShow
instance decodeStopMonitoringMembersResponse :: Decode StopMonitoringMembersResponse where decode = genericDecode options
instance encodeStopMonitoringMembersResponse :: Encode StopMonitoringMembersResponse where encode = genericEncode options

-- | Constructs StopMonitoringMembersResponse from required parameters
newStopMonitoringMembersResponse :: StopMonitoringMembersResponse
newStopMonitoringMembersResponse  = StopMonitoringMembersResponse { "UnprocessedAccounts": (NullOrUndefined Nothing) }

-- | Constructs StopMonitoringMembersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStopMonitoringMembersResponse' :: ( { "UnprocessedAccounts" :: NullOrUndefined (UnprocessedAccounts) } -> {"UnprocessedAccounts" :: NullOrUndefined (UnprocessedAccounts) } ) -> StopMonitoringMembersResponse
newStopMonitoringMembersResponse'  customize = (StopMonitoringMembersResponse <<< customize) { "UnprocessedAccounts": (NullOrUndefined Nothing) }



-- | A tag of the EC2 instance.
newtype Tag = Tag 
  { "Key" :: NullOrUndefined (String)
  , "Value" :: NullOrUndefined (String)
  }
derive instance newtypeTag :: Newtype Tag _
derive instance repGenericTag :: Generic Tag _
instance showTag :: Show Tag where show = genericShow
instance decodeTag :: Decode Tag where decode = genericDecode options
instance encodeTag :: Encode Tag where encode = genericEncode options

-- | Constructs Tag from required parameters
newTag :: Tag
newTag  = Tag { "Key": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }

-- | Constructs Tag's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTag' :: ( { "Key" :: NullOrUndefined (String) , "Value" :: NullOrUndefined (String) } -> {"Key" :: NullOrUndefined (String) , "Value" :: NullOrUndefined (String) } ) -> Tag
newTag'  customize = (Tag <<< customize) { "Key": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }



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
  , "FindingIds" :: NullOrUndefined (FindingIds)
  }
derive instance newtypeUnarchiveFindingsRequest :: Newtype UnarchiveFindingsRequest _
derive instance repGenericUnarchiveFindingsRequest :: Generic UnarchiveFindingsRequest _
instance showUnarchiveFindingsRequest :: Show UnarchiveFindingsRequest where show = genericShow
instance decodeUnarchiveFindingsRequest :: Decode UnarchiveFindingsRequest where decode = genericDecode options
instance encodeUnarchiveFindingsRequest :: Encode UnarchiveFindingsRequest where encode = genericEncode options

-- | Constructs UnarchiveFindingsRequest from required parameters
newUnarchiveFindingsRequest :: String -> UnarchiveFindingsRequest
newUnarchiveFindingsRequest _DetectorId = UnarchiveFindingsRequest { "DetectorId": _DetectorId, "FindingIds": (NullOrUndefined Nothing) }

-- | Constructs UnarchiveFindingsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnarchiveFindingsRequest' :: String -> ( { "DetectorId" :: (String) , "FindingIds" :: NullOrUndefined (FindingIds) } -> {"DetectorId" :: (String) , "FindingIds" :: NullOrUndefined (FindingIds) } ) -> UnarchiveFindingsRequest
newUnarchiveFindingsRequest' _DetectorId customize = (UnarchiveFindingsRequest <<< customize) { "DetectorId": _DetectorId, "FindingIds": (NullOrUndefined Nothing) }



newtype UnarchiveFindingsResponse = UnarchiveFindingsResponse Types.NoArguments
derive instance newtypeUnarchiveFindingsResponse :: Newtype UnarchiveFindingsResponse _
derive instance repGenericUnarchiveFindingsResponse :: Generic UnarchiveFindingsResponse _
instance showUnarchiveFindingsResponse :: Show UnarchiveFindingsResponse where show = genericShow
instance decodeUnarchiveFindingsResponse :: Decode UnarchiveFindingsResponse where decode = genericDecode options
instance encodeUnarchiveFindingsResponse :: Encode UnarchiveFindingsResponse where encode = genericEncode options



-- | An object containing the unprocessed account and a result string explaining why it was unprocessed.
newtype UnprocessedAccount = UnprocessedAccount 
  { "AccountId" :: NullOrUndefined (String)
  , "Result" :: NullOrUndefined (String)
  }
derive instance newtypeUnprocessedAccount :: Newtype UnprocessedAccount _
derive instance repGenericUnprocessedAccount :: Generic UnprocessedAccount _
instance showUnprocessedAccount :: Show UnprocessedAccount where show = genericShow
instance decodeUnprocessedAccount :: Decode UnprocessedAccount where decode = genericDecode options
instance encodeUnprocessedAccount :: Encode UnprocessedAccount where encode = genericEncode options

-- | Constructs UnprocessedAccount from required parameters
newUnprocessedAccount :: UnprocessedAccount
newUnprocessedAccount  = UnprocessedAccount { "AccountId": (NullOrUndefined Nothing), "Result": (NullOrUndefined Nothing) }

-- | Constructs UnprocessedAccount's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnprocessedAccount' :: ( { "AccountId" :: NullOrUndefined (String) , "Result" :: NullOrUndefined (String) } -> {"AccountId" :: NullOrUndefined (String) , "Result" :: NullOrUndefined (String) } ) -> UnprocessedAccount
newUnprocessedAccount'  customize = (UnprocessedAccount <<< customize) { "AccountId": (NullOrUndefined Nothing), "Result": (NullOrUndefined Nothing) }



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
  , "Enable" :: NullOrUndefined (Enable)
  }
derive instance newtypeUpdateDetectorRequest :: Newtype UpdateDetectorRequest _
derive instance repGenericUpdateDetectorRequest :: Generic UpdateDetectorRequest _
instance showUpdateDetectorRequest :: Show UpdateDetectorRequest where show = genericShow
instance decodeUpdateDetectorRequest :: Decode UpdateDetectorRequest where decode = genericDecode options
instance encodeUpdateDetectorRequest :: Encode UpdateDetectorRequest where encode = genericEncode options

-- | Constructs UpdateDetectorRequest from required parameters
newUpdateDetectorRequest :: String -> UpdateDetectorRequest
newUpdateDetectorRequest _DetectorId = UpdateDetectorRequest { "DetectorId": _DetectorId, "Enable": (NullOrUndefined Nothing) }

-- | Constructs UpdateDetectorRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateDetectorRequest' :: String -> ( { "DetectorId" :: (String) , "Enable" :: NullOrUndefined (Enable) } -> {"DetectorId" :: (String) , "Enable" :: NullOrUndefined (Enable) } ) -> UpdateDetectorRequest
newUpdateDetectorRequest' _DetectorId customize = (UpdateDetectorRequest <<< customize) { "DetectorId": _DetectorId, "Enable": (NullOrUndefined Nothing) }



newtype UpdateDetectorResponse = UpdateDetectorResponse Types.NoArguments
derive instance newtypeUpdateDetectorResponse :: Newtype UpdateDetectorResponse _
derive instance repGenericUpdateDetectorResponse :: Generic UpdateDetectorResponse _
instance showUpdateDetectorResponse :: Show UpdateDetectorResponse where show = genericShow
instance decodeUpdateDetectorResponse :: Decode UpdateDetectorResponse where decode = genericDecode options
instance encodeUpdateDetectorResponse :: Encode UpdateDetectorResponse where encode = genericEncode options



-- | UpdateFindingsFeedback request body.
newtype UpdateFindingsFeedbackRequest = UpdateFindingsFeedbackRequest 
  { "Comments" :: NullOrUndefined (Comments)
  , "DetectorId" :: (String)
  , "Feedback" :: NullOrUndefined (Feedback)
  , "FindingIds" :: NullOrUndefined (FindingIds)
  }
derive instance newtypeUpdateFindingsFeedbackRequest :: Newtype UpdateFindingsFeedbackRequest _
derive instance repGenericUpdateFindingsFeedbackRequest :: Generic UpdateFindingsFeedbackRequest _
instance showUpdateFindingsFeedbackRequest :: Show UpdateFindingsFeedbackRequest where show = genericShow
instance decodeUpdateFindingsFeedbackRequest :: Decode UpdateFindingsFeedbackRequest where decode = genericDecode options
instance encodeUpdateFindingsFeedbackRequest :: Encode UpdateFindingsFeedbackRequest where encode = genericEncode options

-- | Constructs UpdateFindingsFeedbackRequest from required parameters
newUpdateFindingsFeedbackRequest :: String -> UpdateFindingsFeedbackRequest
newUpdateFindingsFeedbackRequest _DetectorId = UpdateFindingsFeedbackRequest { "DetectorId": _DetectorId, "Comments": (NullOrUndefined Nothing), "Feedback": (NullOrUndefined Nothing), "FindingIds": (NullOrUndefined Nothing) }

-- | Constructs UpdateFindingsFeedbackRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateFindingsFeedbackRequest' :: String -> ( { "Comments" :: NullOrUndefined (Comments) , "DetectorId" :: (String) , "Feedback" :: NullOrUndefined (Feedback) , "FindingIds" :: NullOrUndefined (FindingIds) } -> {"Comments" :: NullOrUndefined (Comments) , "DetectorId" :: (String) , "Feedback" :: NullOrUndefined (Feedback) , "FindingIds" :: NullOrUndefined (FindingIds) } ) -> UpdateFindingsFeedbackRequest
newUpdateFindingsFeedbackRequest' _DetectorId customize = (UpdateFindingsFeedbackRequest <<< customize) { "DetectorId": _DetectorId, "Comments": (NullOrUndefined Nothing), "Feedback": (NullOrUndefined Nothing), "FindingIds": (NullOrUndefined Nothing) }



newtype UpdateFindingsFeedbackResponse = UpdateFindingsFeedbackResponse Types.NoArguments
derive instance newtypeUpdateFindingsFeedbackResponse :: Newtype UpdateFindingsFeedbackResponse _
derive instance repGenericUpdateFindingsFeedbackResponse :: Generic UpdateFindingsFeedbackResponse _
instance showUpdateFindingsFeedbackResponse :: Show UpdateFindingsFeedbackResponse where show = genericShow
instance decodeUpdateFindingsFeedbackResponse :: Decode UpdateFindingsFeedbackResponse where decode = genericDecode options
instance encodeUpdateFindingsFeedbackResponse :: Encode UpdateFindingsFeedbackResponse where encode = genericEncode options



-- | UpdateIPSet request body.
newtype UpdateIPSetRequest = UpdateIPSetRequest 
  { "Activate" :: NullOrUndefined (Activate)
  , "DetectorId" :: (String)
  , "IpSetId" :: (String)
  , "Location" :: NullOrUndefined (Location)
  , "Name" :: NullOrUndefined (Name)
  }
derive instance newtypeUpdateIPSetRequest :: Newtype UpdateIPSetRequest _
derive instance repGenericUpdateIPSetRequest :: Generic UpdateIPSetRequest _
instance showUpdateIPSetRequest :: Show UpdateIPSetRequest where show = genericShow
instance decodeUpdateIPSetRequest :: Decode UpdateIPSetRequest where decode = genericDecode options
instance encodeUpdateIPSetRequest :: Encode UpdateIPSetRequest where encode = genericEncode options

-- | Constructs UpdateIPSetRequest from required parameters
newUpdateIPSetRequest :: String -> String -> UpdateIPSetRequest
newUpdateIPSetRequest _DetectorId _IpSetId = UpdateIPSetRequest { "DetectorId": _DetectorId, "IpSetId": _IpSetId, "Activate": (NullOrUndefined Nothing), "Location": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing) }

-- | Constructs UpdateIPSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateIPSetRequest' :: String -> String -> ( { "Activate" :: NullOrUndefined (Activate) , "DetectorId" :: (String) , "IpSetId" :: (String) , "Location" :: NullOrUndefined (Location) , "Name" :: NullOrUndefined (Name) } -> {"Activate" :: NullOrUndefined (Activate) , "DetectorId" :: (String) , "IpSetId" :: (String) , "Location" :: NullOrUndefined (Location) , "Name" :: NullOrUndefined (Name) } ) -> UpdateIPSetRequest
newUpdateIPSetRequest' _DetectorId _IpSetId customize = (UpdateIPSetRequest <<< customize) { "DetectorId": _DetectorId, "IpSetId": _IpSetId, "Activate": (NullOrUndefined Nothing), "Location": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing) }



newtype UpdateIPSetResponse = UpdateIPSetResponse Types.NoArguments
derive instance newtypeUpdateIPSetResponse :: Newtype UpdateIPSetResponse _
derive instance repGenericUpdateIPSetResponse :: Generic UpdateIPSetResponse _
instance showUpdateIPSetResponse :: Show UpdateIPSetResponse where show = genericShow
instance decodeUpdateIPSetResponse :: Decode UpdateIPSetResponse where decode = genericDecode options
instance encodeUpdateIPSetResponse :: Encode UpdateIPSetResponse where encode = genericEncode options



-- | UpdateThreatIntelSet request body.
newtype UpdateThreatIntelSetRequest = UpdateThreatIntelSetRequest 
  { "Activate" :: NullOrUndefined (Activate)
  , "DetectorId" :: (String)
  , "Location" :: NullOrUndefined (Location)
  , "Name" :: NullOrUndefined (Name)
  , "ThreatIntelSetId" :: (String)
  }
derive instance newtypeUpdateThreatIntelSetRequest :: Newtype UpdateThreatIntelSetRequest _
derive instance repGenericUpdateThreatIntelSetRequest :: Generic UpdateThreatIntelSetRequest _
instance showUpdateThreatIntelSetRequest :: Show UpdateThreatIntelSetRequest where show = genericShow
instance decodeUpdateThreatIntelSetRequest :: Decode UpdateThreatIntelSetRequest where decode = genericDecode options
instance encodeUpdateThreatIntelSetRequest :: Encode UpdateThreatIntelSetRequest where encode = genericEncode options

-- | Constructs UpdateThreatIntelSetRequest from required parameters
newUpdateThreatIntelSetRequest :: String -> String -> UpdateThreatIntelSetRequest
newUpdateThreatIntelSetRequest _DetectorId _ThreatIntelSetId = UpdateThreatIntelSetRequest { "DetectorId": _DetectorId, "ThreatIntelSetId": _ThreatIntelSetId, "Activate": (NullOrUndefined Nothing), "Location": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing) }

-- | Constructs UpdateThreatIntelSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateThreatIntelSetRequest' :: String -> String -> ( { "Activate" :: NullOrUndefined (Activate) , "DetectorId" :: (String) , "Location" :: NullOrUndefined (Location) , "Name" :: NullOrUndefined (Name) , "ThreatIntelSetId" :: (String) } -> {"Activate" :: NullOrUndefined (Activate) , "DetectorId" :: (String) , "Location" :: NullOrUndefined (Location) , "Name" :: NullOrUndefined (Name) , "ThreatIntelSetId" :: (String) } ) -> UpdateThreatIntelSetRequest
newUpdateThreatIntelSetRequest' _DetectorId _ThreatIntelSetId customize = (UpdateThreatIntelSetRequest <<< customize) { "DetectorId": _DetectorId, "ThreatIntelSetId": _ThreatIntelSetId, "Activate": (NullOrUndefined Nothing), "Location": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing) }



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

