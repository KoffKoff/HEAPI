module Services where

import Abs
import Data.Array

--getService :: Service -> String
-- Account related
--needs API key
accStat = "/account/AccountStatus.xml.aspx"
accChar = "/account/Characters.xml.aspx"
accKeIn = "/account/APIKeyInfo.xml.aspx"

singularity = "https://api.testeveonline.com"
tranquility = "https://api.eveonline.com"

char = "/char"
corp = "/corp"

-- API list
apiList = "/api/CallList.xml.aspx"

-- Character related
-- All below needs API key + characterID
charSheet = char ++ "/CharacterSheet.xml.aspx"
events = char ++ "/UpcomingCalendarEvents.xml.aspx"
eventAtten = char ++ "/CalendarEventAttendees.xml.aspx"
--needs ids (comma separeted)
mails     = char ++ "/MailBodies.xml.aspx"
mailMess  = char ++ "/MailMessages.xml.aspx"
mailLists = char ++ "/mailinglists.xml.aspx"
notifcontact = char ++ "/ContactNotifications.xml.aspx"
notif        = char ++ "/Notifications.xml.aspx"
--needs IDs (comma separeted)
notifTexts   = char ++ "/NotificationTexts.xml.aspx"
research = char ++ "/Research.xml.aspx"
skillTrain = char ++ "/SkillInTraining.xml.aspx"
skillQue = char ++ "/SkillQueue.xml.aspx"

-- Character/Corp related
-- All below needs API key + characterID
assets c = c ++ "/AssetList.xml.aspx"
contacts c = c ++ "/ContactList.xml.aspx"
killLog c = c ++ "/KillLog.xml.aspx"
--optional beforeKillID
facWar c = c ++ "/FacWarStats.xml.aspx"
industry c = c ++ "/IndustryJobs.xml.aspx"
--optional contractID
contracts c = c ++ "/char/Contracts.xml.aspx"
contractBids c = c ++ "/ContractBids.xml.aspx"
--needs contractID
contractItems c = c ++ "/char/ContractItems.xml.aspx"
--opional orderID
marketOrds c = c ++ "/MarketOrders.xml.aspx"
medals c = c ++ "/Medals.xml.aspx"
--needs IDs (comma separeted)
itemLoc c = c ++ "/Locations.xml.aspx"
--needseventIDs (comma separeted)
standing c = c ++ "/Standings.xml.aspx"
accBalance c = c ++ "/AccountBalance.xml.aspx"
--needs accountKey, optional fromID, optional rowCount
accJour c = c ++ "/WalletJournal.xml.aspx"
--needs accountKey, optional fromID, optional rowCount
accTrans c = c ++ "/WalletTransactions.xml.aspx"

-- Corp Related
-- Needs Corp API or Corp APIKey
corpSheet = corp ++ "CorporationSheet.xml.aspx"
-- All below need Needs API key + characterID
containerLog = corp ++ "/ContainerLog.xml.aspx"
-- No characterID, optional extended
members      = corp ++ "/MemberTracking.xml.aspx"
memberSec    = corp ++ "/MemberSecurity.xml.aspx"
memberSecLog = corp ++ "/MemberSecurityLog.xml.aspx"
memberMedals = corp ++ "/MemberMedals.xml.aspx"
-- No characterID
poses     = corp ++ "/StarbaseList.xml.aspx"
-- Needs itemID, No characterID
posDetail = corp ++ "/corp/StarbaseDetail.xml.aspx"
shareHolders = corp ++ "/Shareholders.xml.aspx"
stations       = corp ++ "/OutpostList.xml.aspx"
-- Needs itemID
stationService = corp ++"/OutpostServiceDetail.xml.aspx"
titles = corp ++ "/Titles.xml.aspx"
