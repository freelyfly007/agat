select t3.name as 类别,t4.name as 品牌,t2.name as 产品,t5.name as 属性,t6.Value as 属性值
from t2_ProductPropertyValue t1 
LEFT JOIN t2_Procduct t2 on t1.Procduct_id=t2.Procduct_id
LEFT JOIN t2_Category t3 on t2.Categories_id=t3.Categories_id
LEFT JOIN t2_Brand t4 on t2.Brand_id=t4.Brand_id
LEFT JOIN t2_Property t5 on t1.Property_id=t5.Property_id
LEFT JOIN t2_PropertyValue t6 on t1.PropertyValue_id=t6.PropertyValue_id
order by t3.name,t4.name,t2.name,t5.name,t6.Value;



--新增
insert into t2_Brand(Brand_id,name) values(8,'大疆');
insert into t2_Procduct(Procduct_id,Categories_id,Brand_id,name) values(11,1,8,'无人机');
insert into t2_Property(Property_id,name) values(11,'轴数');
insert into t2_PropertyValue(PropertyValue_id,Property_id,Value) values(21,7,'1 KG'),(22,11,'6');
insert into t2_ProductPropertyValue(ProductPropertyValue_id,Procduct_id,Property_id,PropertyValue_id)values(21,11,1,1),(22,11,7,21),(23,11,11,22);
 
 
select t3.name as 类别,t4.name as 品牌,t2.name as 产品,t5.name as 属性,t6.Value as 属性值
from t2_ProductPropertyValue t1 
LEFT JOIN t2_Procduct t2 on t1.Procduct_id=t2.Procduct_id
LEFT JOIN t2_Category t3 on t2.Categories_id=t3.Categories_id
LEFT JOIN t2_Brand t4 on t2.Brand_id=t4.Brand_id
LEFT JOIN t2_Property t5 on t1.Property_id=t5.Property_id
LEFT JOIN t2_PropertyValue t6 on t1.PropertyValue_id=t6.PropertyValue_id
where t2.name = '无人机'
order by t3.name,t4.name,t2.name,t5.name,t6.Value;