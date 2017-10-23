CREATE TABLE `defer_done` (
  `VT_TRADE_ID` char(32) NOT NULL COMMENT 'gateway.成交单号',
  `VT_ORDER_ID` char(32) NOT NULL COMMENT 'gatewayname.委托单号',
  `TRADE_DATE` char(8) NOT NULL,
  `TRADE_TIME` char(8) NOT NULL,
  `USER_ID` char(30) DEFAULT NULL,
  `BROKER_ID` char(30) DEFAULT NULL,
  `OPER_CODE` char(30) DEFAULT NULL,
  `SYMBOL` varchar(8) DEFAULT NULL,
  `EXCH_ID` char(10) DEFAULT NULL,
  `TRADE_PRICE` float(9,4) DEFAULT NULL,
  `DONE_QTY` int(11) DEFAULT NULL,
  `BS_FLAG` char(1) DEFAULT NULL,
  `EO_FLAG` char(1) DEFAULT NULL,
  `STRATAGE` char(10) NOT NULL COMMENT '策略',
  PRIMARY KEY (`VT_TRADE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='下单人类型：操作员类型，客户类型\n委托单类型：普通委托、预埋委托、条件委托,批量委托、等量委托\n';


CREATE TABLE `defer_done` (
  `VT_TRADE_ID` char(32) NOT NULL COMMENT 'gateway.成交单号',
  `VT_ORDER_ID` char(32) NOT NULL COMMENT 'gatewayname.委托单号',
  `TRADE_DATE` char(8) NOT NULL,
  `TRADE_TIME` char(8) NOT NULL,
  `USER_ID` char(30) DEFAULT NULL,
  `BROKER_ID` char(30) DEFAULT NULL,
  `OPER_CODE` char(30) DEFAULT NULL,
  `SYMBOL` varchar(8) DEFAULT NULL,
  `EXCH_ID` char(10) DEFAULT NULL,
  `TRADE_PRICE` float(9,4) DEFAULT NULL,
  `DONE_QTY` int(11) DEFAULT NULL,
  `BS_FLAG` char(1) DEFAULT NULL,
  `EO_FLAG` char(1) DEFAULT NULL,
  `STRATAGE` char(10) NOT NULL COMMENT '策略',
  PRIMARY KEY (`VT_TRADE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='下单人类型：操作员类型，客户类型\n委托单类型：普通委托、预埋委托、条件委托,批量委托、等量委托\n';


CREATE TABLE `defer_real_hold` (
  `USER_ID` char(30) DEFAULT NULL,
  `BROKER_ID` char(30) DEFAULT NULL,
  `OPER_CODE` char(30) DEFAULT NULL,
  `EXCH_ID` char(10) NOT NULL,
  `SYMBOL` varchar(8) DEFAULT NULL,
  `STRATAGE` char(10) DEFAULT NULL COMMENT '策略',
  `LONG_POSITION` int(11) DEFAULT NULL,
  `TODAY_LONG` int(11) DEFAULT NULL,
  `LONG_OPEN_AVG_PRICE` double(8,4) DEFAULT NULL,
  `SHORT_POSITION` int(11) DEFAULT NULL,
  `TODAY_LONG2` int(11) DEFAULT NULL,
  `SHORT_OPEN_AVG_PRICE` double(8,4) DEFAULT NULL,
  PRIMARY KEY (`EXCH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `defer_entrust_rtn` (
  `VT_ORDER_ID` char(32) NOT NULL COMMENT 'gateway+订单号',
  `ENTRUST_DATE` char(8) NOT NULL,
  `ENTRUST_TIME` char(8) DEFAULT NULL,
  `CANCEL_TIME` char(8) DEFAULT NULL,
  `USER_ID` char(30) DEFAULT NULL,
  `BROKER_ID` char(30) DEFAULT NULL,
  `OPER_CODE` char(30) DEFAULT NULL,
  `SYMBOL` varchar(8) DEFAULT NULL,
  `EXCH_ID` char(10) NOT NULL,
  `ENTRUST_PRICE` float(9,4) DEFAULT NULL,
  `ENTRUST_QTY` int(11) DEFAULT NULL,
  `PRODUCT_CLASS` char(10) DEFAULT NULL,
  `CURRENCY_CODE` char(1) DEFAULT NULL,
  `PRICE_TYPE` char(10) DEFAULT NULL,
  `BS_FLAG` char(1) DEFAULT NULL,
  `EO_FLAG` char(1) DEFAULT NULL,
  `ENTRUST_STATUS` char(1) DEFAULT NULL,
  `STRATAGE` char(10) DEFAULT NULL COMMENT '策略',
  PRIMARY KEY (`VT_ORDER_ID`,`ENTRUST_DATE`,`EXCH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='下单人类型：操作员类型，客户类型\n委托单类型：普通委托、预埋委托、条件委托,批量委托、等量委托\n';


CREATE TABLE `tbuser` (
  `user_id` char(16) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL DEFAULT ' ',
  `status` char(1) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '888888',
  `branch_no` char(16) NOT NULL DEFAULT '',
  `open_date` int(11) NOT NULL DEFAULT '0',
  `cancel_date` int(11) NOT NULL DEFAULT '0',
  `passwd_date` int(11) NOT NULL DEFAULT '0',
  `op_group` char(1) NOT NULL DEFAULT '',
  `op_rights` varchar(50) NOT NULL DEFAULT ' ',
  `reserve1` varchar(250) NOT NULL DEFAULT ' ',
  `dep_id` char(16) NOT NULL DEFAULT '',
  `last_logon_date` int(11) NOT NULL DEFAULT '0',
  `last_logon_time` int(11) NOT NULL DEFAULT '0',
  `last_ip_address` char(30) NOT NULL DEFAULT '',
  `fail_times` int(11) NOT NULL DEFAULT '0',
  `fail_date` int(11) NOT NULL DEFAULT '0',
  `reserve2` varchar(250) NOT NULL DEFAULT ' ',
  `last_fail_ip` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
