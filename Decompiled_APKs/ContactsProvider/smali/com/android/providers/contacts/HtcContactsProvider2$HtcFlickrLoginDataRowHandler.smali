.class public Lcom/android/providers/contacts/HtcContactsProvider2$HtcFlickrLoginDataRowHandler;
.super Lcom/android/providers/contacts/HtcContactsProvider2$HtcBaseLoginDataRowHandler;
.source "HtcContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HtcFlickrLoginDataRowHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/HtcContactsProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/HtcContactsProvider2;Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V
    .locals 7
    .parameter
    .parameter "context"
    .parameter "dbHelper"
    .parameter "aggregator"

    .prologue
    .line 15116
    iput-object p1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$HtcFlickrLoginDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    .line 15117
    const-string v5, "com.htc.socialnetwork.flickr/login"

    const-string v6, "com.htc.socialnetwork.flickr"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/HtcContactsProvider2$HtcBaseLoginDataRowHandler;-><init>(Lcom/android/providers/contacts/HtcContactsProvider2;Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;Ljava/lang/String;)V

    .line 15119
    return-void
.end method
