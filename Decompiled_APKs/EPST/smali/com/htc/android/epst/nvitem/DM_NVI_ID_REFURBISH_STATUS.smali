.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_REFURBISH_STATUS;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_REFURBISH_STATUS.java"


# instance fields
.field private FLAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 6
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REFURBISH_STATUS;->FLAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REFURBISH_STATUS;->FLAG:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 4

    .prologue
    .line 8
    invoke-static {}, Lcom/htc/android/epst/internal/CmdParser;->getSingleton()Lcom/htc/android/epst/internal/CmdParser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REFURBISH_STATUS;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/epst/internal/CmdParser;->getResult(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REFURBISH_STATUS;->FLAG:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 0
    .parameter "fLAG"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_REFURBISH_STATUS;->FLAG:Ljava/lang/String;

    .line 12
    return-void
.end method