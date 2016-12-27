/*
SQLyog Professional v12.09 (64 bit)
MySQL - 5.6.24 : Database - txcaibao
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`txcaibao` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `txcaibao`;

/*Table structure for table `tx_balance_sheet` */

DROP TABLE IF EXISTS `tx_balance_sheet`;

CREATE TABLE `tx_balance_sheet` (
  `secID` varchar(30) NOT NULL COMMENT '证券内部ID',
  `endDate` date NOT NULL COMMENT '截止日期',
  `publishDate` date DEFAULT NULL COMMENT '发布日期',
  `endDateRep` date DEFAULT NULL COMMENT '报表截止日期',
  `partyID` bigint(20) DEFAULT NULL COMMENT '机构内部ID',
  `ticker` varchar(10) DEFAULT NULL COMMENT '股票代码',
  `secShortName` varchar(30) DEFAULT NULL COMMENT '证券简称',
  `exchangeCD` varchar(50) DEFAULT NULL COMMENT '交易市场代码',
  `actPubtime` varchar(50) DEFAULT NULL COMMENT '实际披露时间',
  `mergedFlag` varchar(50) DEFAULT NULL COMMENT '合并标志',
  `reportType` varchar(50) DEFAULT NULL COMMENT '报告类型',
  `fiscalPeriod` varchar(50) DEFAULT NULL COMMENT '会计期间',
  `accoutingStandards` varchar(50) DEFAULT NULL COMMENT '会计准则',
  `currencyCD` varchar(50) DEFAULT NULL COMMENT '货币代码',
  `cashCEquiv` double DEFAULT NULL COMMENT '货币资金',
  `settProv` double DEFAULT NULL COMMENT '结算备付金',
  `loanToOthBankFi` double DEFAULT NULL COMMENT '拆出资金',
  `tradingFA` double DEFAULT NULL COMMENT '交易性金融资产',
  `NotesReceiv` double DEFAULT NULL COMMENT '应收票据',
  `AR` double DEFAULT NULL COMMENT '应收账款',
  `prepayment` double DEFAULT NULL COMMENT '预付款项',
  `premiumReceiv` double DEFAULT NULL COMMENT '应收保费',
  `reinsurReceiv` double DEFAULT NULL COMMENT '应收分保账款',
  `reinsurReserReceiv` double DEFAULT NULL COMMENT '应收分保合同准备金',
  `intReceiv` double DEFAULT NULL COMMENT '应收利息',
  `divReceiv` double DEFAULT NULL COMMENT '应收股利',
  `othReceiv` double DEFAULT NULL COMMENT '其他应收款',
  `purResaleFa` double DEFAULT NULL COMMENT '买入返售金融资产',
  `inventories` double DEFAULT NULL COMMENT '存货',
  `NCAWithin1Y` double DEFAULT NULL COMMENT '一年内到期的非流动资产',
  `othCA` double DEFAULT NULL COMMENT '其他流动资产',
  `TCA` double DEFAULT NULL COMMENT '流动资产合计',
  `disburLA` double DEFAULT NULL COMMENT '发放委托贷款及垫款',
  `availForSaleFa` double DEFAULT NULL COMMENT '可供出售金融资产',
  `htmInvest` double DEFAULT NULL COMMENT '持有至到期投资',
  `LTReceive` double DEFAULT NULL COMMENT '长期应收款',
  `LTEquityInvest` double DEFAULT NULL COMMENT '长期股权投资',
  `investRealEstate` double DEFAULT NULL COMMENT '投资性房地产',
  `fixedAssets` double DEFAULT NULL COMMENT '固定资产',
  `CIP` double DEFAULT NULL COMMENT '在建工程',
  `constMaterials` double DEFAULT NULL COMMENT '工程物资',
  `fixedAssetsDisp` double DEFAULT NULL COMMENT '固定资产清理',
  `producBiolAssets` double DEFAULT NULL COMMENT '生产性生物资产',
  `oilAndGasAssets` double DEFAULT NULL COMMENT '油气资产',
  `intanAssets` double DEFAULT NULL COMMENT '无形资产',
  `RD` double DEFAULT NULL COMMENT '开发支出',
  `goodwill` double DEFAULT NULL COMMENT '商誉',
  `LTAmorExp` double DEFAULT NULL COMMENT '长期待摊费用',
  `deferTaxAssets` double DEFAULT NULL COMMENT '递延所得税资产',
  `othNCA` double DEFAULT NULL COMMENT '其他非流动资产',
  `TNCA` double DEFAULT NULL COMMENT '非流动资产合计',
  `TAssets` double DEFAULT NULL COMMENT '资产总计',
  `STBorr` double DEFAULT NULL COMMENT '短期借款',
  `CBBorr` double DEFAULT NULL COMMENT '向中央银行借款',
  `depos` double DEFAULT NULL COMMENT '吸收存款及同业存放',
  `loanFrOthBankFi` double DEFAULT NULL COMMENT '拆入资金',
  `tradingFL` double DEFAULT NULL COMMENT '交易性金融负债',
  `NotesPayable` double DEFAULT NULL COMMENT '应付票据',
  `AP` double DEFAULT NULL COMMENT '应付账款',
  `advanceReceipts` double DEFAULT NULL COMMENT '预收款项',
  `soldForRepurFa` double DEFAULT NULL COMMENT '卖出回购金融资产款',
  `commisPayable` double DEFAULT NULL COMMENT '应付手续费及佣金',
  `payrollPayable` double DEFAULT NULL COMMENT '应付职工薪酬',
  `taxesPayable` double DEFAULT NULL COMMENT '应交税费',
  `intPayable` double DEFAULT NULL COMMENT '应付利息',
  `divPayable` double DEFAULT NULL COMMENT '应付股利',
  `othPayable` double DEFAULT NULL COMMENT '其他应付款',
  `reinsurPayable` double DEFAULT NULL COMMENT '应付分保账款',
  `insurReser` double DEFAULT NULL COMMENT '保险合同准备金',
  `fundsSecTradAgen` double DEFAULT NULL COMMENT '代理买卖证券款',
  `fundsSecUndwAgen` double DEFAULT NULL COMMENT '代理承销证券款',
  `NCLWithin1Y` double DEFAULT NULL COMMENT '一年内到期的非流动负债',
  `othCL` double DEFAULT NULL COMMENT '其他流动负债',
  `TCL` double DEFAULT NULL COMMENT '流动负债合计',
  `LTBorr` double DEFAULT NULL COMMENT '长期借款',
  `bondPayable` double DEFAULT NULL COMMENT '应付债券',
  `LTPayable` double DEFAULT NULL COMMENT '长期应付款',
  `specificPayables` double DEFAULT NULL COMMENT '专项应付款',
  `estimatedLiab` double DEFAULT NULL COMMENT '预计负债',
  `deferTaxLiab` double DEFAULT NULL COMMENT '递延所得税负债',
  `othNCL` double DEFAULT NULL COMMENT '其他非流动负债',
  `TNCL` double DEFAULT NULL COMMENT '非流动负债合计',
  `TLiab` double DEFAULT NULL COMMENT '负债合计',
  `paidInCapital` double DEFAULT NULL COMMENT '实收资本(或股本)',
  `capitalReser` double DEFAULT NULL COMMENT '资本公积',
  `treasuryShare` double DEFAULT NULL COMMENT '减:库存股',
  `specialReser` double DEFAULT NULL COMMENT '专项储备',
  `surplusReser` double DEFAULT NULL COMMENT '盈余公积',
  `ordinRiskReser` double DEFAULT NULL COMMENT '一般风险准备',
  `retainedEarnings` double DEFAULT NULL COMMENT '未分配利润',
  `forexDiffer` double DEFAULT NULL COMMENT '外币报表折算差额',
  `TEquityAttrP` double DEFAULT NULL COMMENT '归属于母公司所有者权益合计',
  `minorityInt` double DEFAULT NULL COMMENT '少数股东权益',
  `TShEquity` double DEFAULT NULL COMMENT '所有者权益合计',
  `TLiabEquity` double DEFAULT NULL COMMENT '负债和所有者权益总计',
  PRIMARY KEY (`secID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tx_balance_sheet` */

/*Table structure for table `tx_cash_flows_statements` */

DROP TABLE IF EXISTS `tx_cash_flows_statements`;

CREATE TABLE `tx_cash_flows_statements` (
  `secID` varchar(50) NOT NULL COMMENT '证券内部ID',
  `reportType` varchar(50) DEFAULT NULL COMMENT '报告类型',
  `endDate` date DEFAULT NULL COMMENT '截止日期',
  `publishDate` date DEFAULT NULL COMMENT '发布日期',
  `endDateRep` date DEFAULT NULL COMMENT '报表截止日期',
  `partyID` bigint(20) DEFAULT NULL COMMENT '机构内部ID',
  `ticker` varchar(20) DEFAULT NULL COMMENT '股票代码',
  `secShortName` varchar(20) DEFAULT NULL COMMENT '证券简称',
  `exchangeCD` varchar(20) DEFAULT NULL COMMENT '交易市场代码',
  `actPubtime` varchar(50) DEFAULT NULL COMMENT '实际披露时间',
  `mergedFlag` varchar(50) DEFAULT NULL COMMENT '合并标志',
  `fiscalPeriod` varchar(50) DEFAULT NULL COMMENT '会计期间',
  `accoutingStandards` varchar(50) DEFAULT NULL COMMENT '会计准则',
  `currencyCD` varchar(50) DEFAULT NULL COMMENT '货币代码',
  `CFrSaleGS` double DEFAULT NULL COMMENT '销售商品、提供劳务收到的现金',
  `NDeposIncrCFI` double DEFAULT NULL COMMENT '客户存款和同业存放款项净增加额',
  `NIncrBorrFrCB` double DEFAULT NULL COMMENT '向中央银行借款净增加额',
  `NIncBorrOthFI` double DEFAULT NULL COMMENT '向其他金融机构拆入资金净增加额',
  `premFrOrigContr` double DEFAULT NULL COMMENT '收到原保险合同保费取得的现金',
  `NReinsurPrem` double DEFAULT NULL COMMENT '收到再保险业务现金净额',
  `NIncPhDeposInv` double DEFAULT NULL COMMENT '保户储金及投资款净增加额',
  `NIncDispTradFA` double DEFAULT NULL COMMENT '处置交易性金融资产净增加额',
  `IFCCashIncr` double DEFAULT NULL COMMENT '收取利息、手续费及佣金的现金',
  `NIncFrBorr` double DEFAULT NULL COMMENT '拆入资金净增加额',
  `NCApIncrRepur` double DEFAULT NULL COMMENT '回购业务资金净增加额',
  `refundOfTax` double DEFAULT NULL COMMENT '收到的税费返还',
  `CFrOthOperateA` double DEFAULT NULL COMMENT '收到其他与经营活动有关的现金',
  `CInfFrOperateA` double DEFAULT NULL COMMENT '经营活动现金流入小计',
  `CPaidGS` double DEFAULT NULL COMMENT '购买商品、接受劳务支付的现金',
  `NIncDisburOfLA` double DEFAULT NULL COMMENT '客户贷款及垫款净增加额',
  `NIncrDeposInFI` double DEFAULT NULL COMMENT '存放中央银行和同业款项净增加额',
  `origContrCIndem` double DEFAULT NULL COMMENT '支付原保险合同赔付款项的现金',
  `CPaidIFC` double DEFAULT NULL COMMENT '支付利息、手续费及佣金的现金',
  `CPaidPolDiv` double DEFAULT NULL COMMENT '支付保单红利的现金',
  `CPaidToForEmpl` double DEFAULT NULL COMMENT '支付给职工以及为职工支付的现金',
  `CPaidForTaxes` double DEFAULT NULL COMMENT '支付的各项税费',
  `CPaidForOthOpA` double DEFAULT NULL COMMENT '支付其他与经营活动有关的现金',
  `COutfOperateA` double DEFAULT NULL COMMENT '经营活动现金流出小计',
  `NCFOperateA` double DEFAULT NULL COMMENT '经营活动产生的现金流量净额',
  `procSellInvest` double DEFAULT NULL COMMENT '收回投资收到的现金',
  `gainInvest` double DEFAULT NULL COMMENT '取得投资收益收到的现金',
  `dispFixAssetsOth` double DEFAULT NULL COMMENT '处置固定资产、无形资产和其他长期资产收回的现金净额',
  `NDispSubsOthBizC` double DEFAULT NULL COMMENT '处置子公司及其他营业单位收到的现金净额',
  `CFrOthInvestA` double DEFAULT NULL COMMENT '收到其他与投资活动有关的现金',
  `CInfFrInvestA` double DEFAULT NULL COMMENT '投资活动现金流入小计',
  `purFixAssetsOth` double DEFAULT NULL COMMENT '购建固定资产、无形资产和其他长期资产支付的现金',
  `CPaidInvest` double DEFAULT NULL COMMENT '投资支付的现金',
  `NIncrPledgeLoan` double DEFAULT NULL COMMENT '质押贷款净增加额',
  `NCPaidAcquis` double DEFAULT NULL COMMENT '取得子公司及其他营业单位支付的现金净额',
  `CPaidOthInvestA` double DEFAULT NULL COMMENT '支付其他与投资活动有关的现金',
  `COutfFrInvestA` double DEFAULT NULL COMMENT '投资活动现金流出小计',
  `NCFFrInvestA` double DEFAULT NULL COMMENT '投资活动产生的现金流量净额',
  `CFrCapContr` double DEFAULT NULL COMMENT '吸收投资收到的现金',
  `CFrMinoSSubs` double DEFAULT NULL COMMENT '其中:子公司吸收少数股东投资收到的现金',
  `CFrBorr` double DEFAULT NULL COMMENT '取得借款收到的现金',
  `CFrIssueBond` double DEFAULT NULL COMMENT '发行债券收到的现金',
  `CFrOthFinanA` double DEFAULT NULL COMMENT '收到其他与筹资活动有关的现金',
  `CInfFrFinanA` double DEFAULT NULL COMMENT '筹资活动现金流入小计',
  `CPaidForDebts` double DEFAULT NULL COMMENT '偿还债务支付的现金',
  `CPaidDivProfInt` double DEFAULT NULL COMMENT '分配股利、利润或偿付利息支付的现金',
  `divProfSubsMinoS` double DEFAULT NULL COMMENT '其中:子公司支付给少数股东的股利、利润',
  `CPaidOthFinanA` double DEFAULT NULL COMMENT '支付其他与筹资活动有关的现金',
  `COutfFrFinanA` double DEFAULT NULL COMMENT '筹资活动现金流出小计',
  `NCFFrFinanA` double DEFAULT NULL COMMENT '筹资活动产生的现金流量净额',
  `forexEffects` double DEFAULT NULL COMMENT '汇率变动对现金及现金等价物的影响',
  `NChangeInCash` double DEFAULT NULL COMMENT '现金及现金等价物净增加额',
  `NCEBegBal` double DEFAULT NULL COMMENT '加:期初现金及现金等价物余额',
  `NCEEndBal` double DEFAULT NULL COMMENT '期末现金及现金等价物余额',
  PRIMARY KEY (`secID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tx_cash_flows_statements` */

/*Table structure for table `tx_income_statements` */

DROP TABLE IF EXISTS `tx_income_statements`;

CREATE TABLE `tx_income_statements` (
  `secID` varchar(30) NOT NULL COMMENT '证券内部ID',
  `reportType` varchar(10) DEFAULT NULL COMMENT '报告类型',
  `endDate` date DEFAULT NULL COMMENT '截止日期',
  `publishDate` date DEFAULT NULL COMMENT '发布日期',
  `endDateRep` date DEFAULT NULL COMMENT '报表截止日期',
  `partyID` varchar(10) DEFAULT NULL COMMENT '机构内部ID',
  `ticker` varchar(20) DEFAULT NULL COMMENT '股票代码',
  `secShortName` varchar(20) DEFAULT NULL COMMENT '证券简称',
  `exchangeCD` varchar(20) DEFAULT NULL COMMENT '交易市场代码',
  `actPubtime` varchar(20) DEFAULT NULL COMMENT '实际披露时间',
  `mergedFlag` varchar(20) DEFAULT NULL COMMENT '合并标志',
  `fiscalPeriod` varchar(50) DEFAULT NULL COMMENT '会计期间',
  `accoutingStandards` varchar(50) DEFAULT NULL COMMENT '会计准则',
  `currencyCD` varchar(50) DEFAULT NULL COMMENT '货币代码',
  `tRevenue` double DEFAULT NULL COMMENT '营业总收入',
  `revenue` double DEFAULT NULL COMMENT '营业收入',
  `intIncome` double DEFAULT NULL COMMENT '利息收入',
  `intExp` double DEFAULT NULL COMMENT '利息支出',
  `premEarned` double DEFAULT NULL COMMENT '已赚保费',
  `commisIncome` double DEFAULT NULL COMMENT '手续费及佣金收入',
  `commisExp` double DEFAULT NULL COMMENT '手续费及佣金支出',
  `TCogs` double DEFAULT NULL COMMENT '营业总成本',
  `COGS` double DEFAULT NULL COMMENT '营业成本',
  `premRefund` double DEFAULT NULL COMMENT '退保金',
  `NCompensPayout` double DEFAULT NULL COMMENT '赔付支出净额',
  `reserInsurContr` double DEFAULT NULL COMMENT '提取保险合同准备金净额',
  `policyDivPayt` double DEFAULT NULL COMMENT '保单红利支出',
  `reinsurExp` double DEFAULT NULL COMMENT '分保费用',
  `bizTaxSurchg` double DEFAULT NULL COMMENT '营业税金及附加',
  `sellExp` double DEFAULT NULL COMMENT '销售费用',
  `adminExp` double DEFAULT NULL COMMENT '管理费用',
  `finanExp` double DEFAULT NULL COMMENT '财务费用',
  `assetsImpairLoss` double DEFAULT NULL COMMENT '资产减值损失',
  `fValueChgGain` double DEFAULT NULL COMMENT '公允价值变动收益',
  `investIncome` double DEFAULT NULL COMMENT '投资收益',
  `AJInvestIncome` double DEFAULT NULL COMMENT '其中:对联营企业和合营企业的投资收益',
  `forexGain` double DEFAULT NULL COMMENT '汇兑收益',
  `operateProfit` double DEFAULT NULL COMMENT '营业利润',
  `NoperateIncome` double DEFAULT NULL COMMENT '营业外收入',
  `NoperateExp` double DEFAULT NULL COMMENT '营业外支出',
  `NCADisploss` double DEFAULT NULL COMMENT '非流动资产处置损失',
  `TProfit` double DEFAULT NULL COMMENT '利润总额',
  `incomeTax` double DEFAULT NULL COMMENT '所得税费用',
  `NIncome` double DEFAULT NULL COMMENT '净利润',
  `NIncomeAttrP` double DEFAULT NULL COMMENT '归属于母公司所有者的净利润',
  `minorityGain` double DEFAULT NULL COMMENT '少数股东损益',
  `basicEPS` double DEFAULT NULL COMMENT '基本每股收益',
  `dilutedEPS` double DEFAULT NULL COMMENT '稀释每股收益',
  `othComprIncome` double DEFAULT NULL COMMENT '其他综合收益',
  `TComprIncome` double DEFAULT NULL COMMENT '综合收益总额',
  `comprIncAttrP` double DEFAULT NULL COMMENT '归属于母公司所有者的综合收益总额',
  `comprIncAttrMS` double DEFAULT NULL COMMENT '归属于少数股东的综合收益总额',
  PRIMARY KEY (`secID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tx_income_statements` */

/*Table structure for table `tx_stock` */

DROP TABLE IF EXISTS `tx_stock`;

CREATE TABLE `tx_stock` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(10) DEFAULT NULL COMMENT '代码',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `industry` varchar(50) DEFAULT NULL COMMENT '所属行业',
  `area` varchar(50) DEFAULT NULL COMMENT '地区',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tx_stock` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
