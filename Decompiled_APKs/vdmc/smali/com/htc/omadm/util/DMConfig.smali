.class public Lcom/htc/omadm/util/DMConfig;
.super Ljava/lang/Object;
.source "DMConfig.java"


# static fields
.field private static final CONF_FILENAME:Ljava/lang/String; = "htcdm.conf"

.field private static OMA_CONF:Ljava/util/Properties; = null

.field private static final TAG:Ljava/lang/String; = "DMConfig"

.field private static confFileName:Ljava/lang/String;

.field private static confFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/htc/omadm/util/DMConfig;->OMA_CONF:Ljava/util/Properties;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetConfString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defaultvalue"

    .prologue
    .line 66
    sget-object v0, Lcom/htc/omadm/util/DMConfig;->OMA_CONF:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetConfigBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 71
    sget-object v2, Lcom/htc/omadm/util/DMConfig;->OMA_CONF:Ljava/util/Properties;

    invoke-virtual {v2, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, svalue:Ljava/lang/String;
    move v0, p1

    .line 73
    .local v0, bret:Z
    if-nez v1, :cond_0

    .line 77
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0
.end method

.method public static GetConfigInt(Ljava/lang/String;I)I
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 82
    sget-object v2, Lcom/htc/omadm/util/DMConfig;->OMA_CONF:Ljava/util/Properties;

    invoke-virtual {v2, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, svalue:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 89
    .end local p1
    :goto_0
    return p1

    .line 87
    .restart local p1
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, ex:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static GetMiscDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/htc/omadm/util/DMConfig;->confFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public static LoadConfig(Ljava/lang/String;)Z
    .locals 5
    .parameter "miscPath"

    .prologue
    const/4 v4, 0x0

    .line 26
    sget-object v3, Lcom/htc/omadm/util/DMConfig;->OMA_CONF:Ljava/util/Properties;

    invoke-virtual {v3}, Ljava/util/Properties;->clear()V

    .line 27
    sput-object v4, Lcom/htc/omadm/util/DMConfig;->confFilePath:Ljava/lang/String;

    .line 28
    sput-object v4, Lcom/htc/omadm/util/DMConfig;->confFileName:Ljava/lang/String;

    .line 30
    if-eqz p0, :cond_0

    .line 31
    sput-object p0, Lcom/htc/omadm/util/DMConfig;->confFilePath:Ljava/lang/String;

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/htc/omadm/util/DMConfig;->confFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "htcdm.conf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/htc/omadm/util/DMConfig;->confFileName:Ljava/lang/String;

    .line 35
    :cond_0
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/htc/omadm/util/DMConfig;->confFileName:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 37
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v3, Lcom/htc/omadm/util/DMConfig;->confFileName:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 38
    .local v1, fis:Ljava/io/FileInputStream;
    if-eqz v1, :cond_1

    .line 39
    sget-object v3, Lcom/htc/omadm/util/DMConfig;->OMA_CONF:Ljava/util/Properties;

    invoke-virtual {v3, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 40
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    .end local v1           #fis:Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 42
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v3, "DMConfig"

    const-string v4, "FileNotFoundException"

    invoke-static {v3, v4, v0}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 46
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 49
    .local v0, e:Ljava/io/IOException;
    const-string v3, "DMConfig"

    const-string v4, "IOException"

    invoke-static {v3, v4, v0}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 54
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    :try_start_1
    const-string v3, "DMConfig"

    const-string v4, "No dm config file, create default one"

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v3, Lcom/htc/omadm/util/DMConfig;->confFileName:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 56
    .local v2, fos:Ljava/io/FileOutputStream;
    sget-object v3, Lcom/htc/omadm/util/DMConfig;->OMA_CONF:Ljava/util/Properties;

    const-string v4, "auto-create"

    invoke-virtual {v3, v2, v4}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 57
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DMConfig"

    const-string v4, "Exception:"

    invoke-static {v3, v4, v0}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static SetConfString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 95
    const/4 v1, 0x0

    .line 96
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    sget-object v3, Lcom/htc/omadm/util/DMConfig;->OMA_CONF:Ljava/util/Properties;

    invoke-virtual {v3, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    sget-object v3, Lcom/htc/omadm/util/DMConfig;->OMA_CONF:Ljava/util/Properties;

    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v4, Lcom/htc/omadm/util/DMConfig;->confFileName:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v3, v2, v4}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    const/4 v3, 0x1

    .line 104
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :goto_0
    return v3

    .line 100
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/io/IOException;
    :goto_1
    const-string v3, "DMConfig"

    const-string v4, "setConfString"

    invoke-static {v3, v4, v0}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    const/4 v3, 0x0

    goto :goto_0

    .line 100
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method
