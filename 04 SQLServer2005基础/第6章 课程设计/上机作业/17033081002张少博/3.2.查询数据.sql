-- 收银员2号update ware set Amount = Amount-5 where wid ='10012'insert into SalesInfo values (10012,'2017-09-30',5,1002)--按销售总额对收银员排序select e.Ename,sum((SalesPrice-PurchasePrice)*SalesAmount) as 销售总额from  Employee e,SalesInfo s,ware w where e.eid=s.eid and w.wid=s.widgroup by e.ename order by 销售总额 desc--查询商品销量在前五的商品名称及销量 select top 5 w.wname,sum(s.SalesAmount) 销量 from Ware w,SalesInfo s where w.wid=s.widgroup by w.wname order by  销量 desc--查询2010年商品销量在前五的商品名称及销量 select top 5 w.wname,sum(s.SalesAmount) 销量from  Ware w,SalesInfo s where w.wid=s.widand s.SalesDate between '2017-12-15'and '2017-12-20'group by w.wname order by  销量 desc--统计每个员工2017年名称及销量 select e.Ename,sum(s.salesAmount) 销量from Employee e,SalesInfo s where e.eid=s.eid ands.SalesDate between '2017-12-12'and'2017-12-15'group by e.Ename order by 销量 desc--单个利润select s.SalesDate,sum((w.SalesPrice-w.PurchasePrice)*s.SalesAmount) 总利润from SalesInfo s,Ware wwhere s.wid=w.wid and s.SalesDatebetween'2017-12-01'and'2017-12-30'group by s.SalesDate--统计2017年的总利润select sum((w.SalesPrice-w.PurchasePrice)*s.SalesAmount) 总利润from Ware w,SalesInfo s where w.Wid=s.wid and  s.SalesDatebetween'2017-12-01'and'2017-12-30'