.class Lcom/htc/launcher/Launcher$14;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Launcher;->reloadDesktopItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 4511
    iput-object p1, p0, Lcom/htc/launcher/Launcher$14;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 4514
    iget-object v0, p0, Lcom/htc/launcher/Launcher$14;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v2, p0, Lcom/htc/launcher/Launcher$14;->this$0:Lcom/htc/launcher/Launcher;

    invoke-static {}, Lcom/htc/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v5

    move v3, v1

    move v4, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/launcher/Launcher;->removeWidgetsAndLoadUserItems(ZLcom/htc/launcher/Launcher;ZZIZ)V

    .line 4516
    return-void
.end method
