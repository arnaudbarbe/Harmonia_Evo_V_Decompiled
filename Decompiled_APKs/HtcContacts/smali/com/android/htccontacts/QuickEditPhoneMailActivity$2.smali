.class Lcom/android/htccontacts/QuickEditPhoneMailActivity$2;
.super Ljava/lang/Object;
.source "QuickEditPhoneMailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/QuickEditPhoneMailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/QuickEditPhoneMailActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/QuickEditPhoneMailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity$2;->this$0:Lcom/android/htccontacts/QuickEditPhoneMailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/htccontacts/QuickEditPhoneMailActivity$2;->this$0:Lcom/android/htccontacts/QuickEditPhoneMailActivity;

    #calls: Lcom/android/htccontacts/QuickEditPhoneMailActivity;->doRevertAction()V
    invoke-static {v0}, Lcom/android/htccontacts/QuickEditPhoneMailActivity;->access$200(Lcom/android/htccontacts/QuickEditPhoneMailActivity;)V

    .line 119
    return-void
.end method
