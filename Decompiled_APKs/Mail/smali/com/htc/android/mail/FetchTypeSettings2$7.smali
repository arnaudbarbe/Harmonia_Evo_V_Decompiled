.class Lcom/htc/android/mail/FetchTypeSettings2$7;
.super Ljava/lang/Object;
.source "FetchTypeSettings2.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/FetchTypeSettings2;->bind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/FetchTypeSettings2;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/FetchTypeSettings2;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/htc/android/mail/FetchTypeSettings2$7;->this$0:Lcom/htc/android/mail/FetchTypeSettings2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/htc/android/mail/FetchTypeSettings2$7;->this$0:Lcom/htc/android/mail/FetchTypeSettings2;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/FetchTypeSettings2;->checkItem(I)V

    .line 190
    const/4 v0, 0x0

    return v0
.end method
