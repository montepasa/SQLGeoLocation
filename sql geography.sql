CREATE TABLE [dbo].[ibrahim]
(
    [Id] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    //	/*buraya değişkenlerinizi ekliyorsunuz. Latitude ve Longitude alanlarına float değer ve virgül ile ayırılmış şekilde 
    girilen konumlar (örnek veriyorum 36,75435 ve 30,34566) artık Location alanına ve geography formatında otomatik olarak yazılır. 
    İlerde bu Location alanını kullanarak uzaklık hesaplamaları yapabilirsiniz */
    [Latitude] float NOT NULL, 
    [Longitude] float NOT NULL, 
    [Location]  AS ([geography]::Point(ISNULL(Longitude, ''),ISNULL(Latitude, ''), 4326))
)
