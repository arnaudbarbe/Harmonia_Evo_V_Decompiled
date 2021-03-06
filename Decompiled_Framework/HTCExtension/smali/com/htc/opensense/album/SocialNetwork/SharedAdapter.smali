.class public Lcom/htc/opensense/album/SocialNetwork/SharedAdapter;
.super Landroid/widget/BaseAdapter;
.source "SharedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/album/SocialNetwork/SharedAdapter$OnSetContentToListItemListener;,
        Lcom/htc/opensense/album/SocialNetwork/SharedAdapter$OnListClickListener;
    }
.end annotation


# static fields
.field public static final KEY_CLASS_NAME:Ljava/lang/String; = "SharedAdapter.KEY_CLASS_NAME"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "SharedAdapter.KEY_PACKAGE"

.field public static final KEY_SHARE_TO:Ljava/lang/String; = "SharedAdapter.KEY_SHARE_TO"

.field public static final SHARE_CONFLICT:I = 0x30000

.field public static final SHARE_IMAGE:I = 0x1

.field public static final SHARE_MULTIPLE:I = 0x20000

.field public static final SHARE_MULTIPLE_BOTH:I = 0x20003

.field public static final SHARE_MULTIPLE_IMAGES:I = 0x20001

.field public static final SHARE_MULTIPLE_ITEM_SET_AS:I = 0x440000

.field public static final SHARE_MULTIPLE_ITEM_SHARE:I = 0x220000

.field public static final SHARE_MULTIPLE_VIDEOS:I = 0x20002

.field public static final SHARE_SINGLE:I = 0x10000

.field public static final SHARE_SINGLE_BOTH:I = 0x10003

.field public static final SHARE_SINGLE_IMAGE:I = 0x10001

.field public static final SHARE_SINGLE_ITEM_SET_AS:I = 0x330000

.field public static final SHARE_SINGLE_ITEM_SHARE:I = 0x110000

.field public static final SHARE_SINGLE_VIDEO:I = 0x10002

.field public static final SHARE_VIDEO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SharedAdapter"


# instance fields
.field private mCombinedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetwork/IComparableRI;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOnSetContentToListItemListener:Lcom/htc/opensense/album/SocialNetwork/SharedAdapter$OnSetContentToListItemListener;

.field private mShowIcon:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetwork/IComparableRI;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/SharedAdapter;->mOnSetContentToListItemListener:Lcom/htc/opensense/album/SocialNetwork/SharedAdapter$OnSetContentToListItemListener;

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetwork/SharedAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/opensense/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    iput-boolean p3, p0, Lcom/htc/opensense/album/SocialNetwork/SharedAdapter;->mShowIcon:Z

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/SharedAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;

    invoke-interface {v0}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/4 v10, 0x0

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/htc/opensense/album/SocialNetwork/SharedAdapter;->mShowIcon:Z

    if-eqz v8, :cond_6

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetwork/SharedAdapter;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetwork/SharedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    invoke-interface {v1}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v4

    :cond_1
    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetwork/SharedAdapter;->mOnSetContentToListItemListener:Lcom/htc/opensense/album/SocialNetwork/SharedAdapter$OnSetContentToListItemListener;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetwork/SharedAdapter;->mOnSetContentToListItemListener:Lcom/htc/opensense/album/SocialNetwork/SharedAdapter$OnSetContentToListItemListener;

    iget-object v9, p0, Lcom/htc/opensense/album/SocialNetwork/SharedAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-interface {v8, v9, p3, v0, v4}, Lcom/htc/opensense/album/SocialNetwork/SharedAdapter$OnSetContentToListItemListener;->onSetIconText(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    :cond_2
    if-nez v7, :cond_4

    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetwork/SharedAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetwork/SharedAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x2090071

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_4

    const v8, 0x2020010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_3

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const v8, 0x202001a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_0
    if-nez v7, :cond_5

    new-instance v7, Landroid/view/View;

    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetwork/SharedAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    :cond_5
    return-object v7

    :cond_6
    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v4

    :cond_7
    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetwork/SharedAdapter;->mOnSetContentToListItemListener:Lcom/htc/opensense/album/SocialNetwork/SharedAdapter$OnSetContentToListItemListener;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetwork/SharedAdapter;->mOnSetContentToListItemListener:Lcom/htc/opensense/album/SocialNetwork/SharedAdapter$OnSetContentToListItemListener;

    iget-object v9, p0, Lcom/htc/opensense/album/SocialNetwork/SharedAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-interface {v8, v9, p3, v4}, Lcom/htc/opensense/album/SocialNetwork/SharedAdapter$OnSetContentToListItemListener;->onSetText(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    :cond_8
    if-nez v7, :cond_4

    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetwork/SharedAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetwork/SharedAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x20900ad

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_4

    const v8, 0x1020014

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 2

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/SharedAdapter;->mCombinedList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;

    invoke-interface {v0}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->createIntent()Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public setOnSetContentToListItemListener(Lcom/htc/opensense/album/SocialNetwork/SharedAdapter$OnSetContentToListItemListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetwork/SharedAdapter;->mOnSetContentToListItemListener:Lcom/htc/opensense/album/SocialNetwork/SharedAdapter$OnSetContentToListItemListener;

    return-void
.end method
