.class public Lcom/htc/opensense/plugin/SelectableServices$ServiceComponent;
.super Ljava/lang/Object;
.source "SelectableServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/plugin/SelectableServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceComponent"
.end annotation


# instance fields
.field public componentName:Landroid/content/ComponentName;

.field public serviceTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/opensense/plugin/SelectableServices$ServiceComponent;->serviceTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/opensense/plugin/SelectableServices$ServiceComponent;->componentName:Landroid/content/ComponentName;

    return-void
.end method
