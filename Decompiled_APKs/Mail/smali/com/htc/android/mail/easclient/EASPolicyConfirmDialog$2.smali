.class Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$2;
.super Ljava/lang/Object;
.source "EASPolicyConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$2;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog$2;->this$0:Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    #calls: Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->userCancel()V
    invoke-static {v0}, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;->access$300(Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;)V

    .line 235
    return-void
.end method
