.class public final enum Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;
.super Ljava/lang/Enum;
.source "FxDropTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

.field public static final enum DRAG_ENTER:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

.field public static final enum DRAG_EXIT:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

.field public static final enum DRAG_OVER:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

.field public static final enum DROP:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    const-string v1, "DRAG_ENTER"

    invoke-direct {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;->DRAG_ENTER:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    const-string v1, "DRAG_OVER"

    invoke-direct {v0, v1, v3}, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;->DRAG_OVER:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    const-string v1, "DRAG_EXIT"

    invoke-direct {v0, v1, v4}, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;->DRAG_EXIT:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    const-string v1, "DROP"

    invoke-direct {v0, v1, v5}, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;->DROP:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;->DRAG_ENTER:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;->DRAG_OVER:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;->DRAG_EXIT:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;->DROP:Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;->$VALUES:[Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 82
    const-class v0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    return-object v0
.end method

.method public static values()[Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;->$VALUES:[Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    invoke-virtual {v0}, [Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/rosie/home/fxcontrol/FxDropTarget$State;

    return-object v0
.end method