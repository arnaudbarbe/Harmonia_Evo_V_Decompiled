.class public Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "AlbumAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/AlbumAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FlingRunnable"
.end annotation


# instance fields
.field protected mLastFlingY:I

.field protected mScroller:Lcom/htc/widget/HtcScroller;

.field final synthetic this$0:Lcom/htc/opensense/widget/AlbumAbsListView;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/widget/AlbumAbsListView;)V
    .locals 2
    .parameter

    .prologue
    .line 2296
    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2297
    new-instance v0, Lcom/htc/widget/HtcScroller;

    invoke-virtual {p1}, Lcom/htc/opensense/widget/AlbumAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    .line 2298
    return-void
.end method


# virtual methods
.method endFling()V
    .locals 2

    .prologue
    .line 2321
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    .line 2322
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView;->reportScrollStateChange(I)V

    .line 2323
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->clearScrollingCache()V

    .line 2324
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->rescanScreen()V

    .line 2325
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    .line 2328
    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget v8, v8, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_0

    .line 2390
    :goto_0
    return-void

    .line 2332
    :cond_0
    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget v8, v8, Lcom/htc/opensense/widget/AlbumAbsListView;->mItemCount:I

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-virtual {v8}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_2

    .line 2333
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->endFling()V

    goto :goto_0

    .line 2337
    :cond_2
    iget-object v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    .line 2338
    .local v6, scroller:Lcom/htc/widget/HtcScroller;
    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->computeScrollOffset()Z

    move-result v3

    .line 2339
    .local v3, more:Z
    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->getCurrY()I

    move-result v7

    .line 2343
    .local v7, y:I
    iget v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->mLastFlingY:I

    sub-int v0, v8, v7

    .line 2346
    .local v0, delta:I
    if-lez v0, :cond_4

    .line 2348
    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget v9, v9, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    iput v9, v8, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    .line 2349
    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2350
    .local v1, firstView:Landroid/view/View;
    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, v8, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionViewOriginalTop:I

    .line 2353
    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-virtual {v8}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    #getter for: Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingBottom:I
    invoke-static {v9}, Lcom/htc/opensense/widget/AlbumAbsListView;->access$900(Lcom/htc/opensense/widget/AlbumAbsListView;)I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    #getter for: Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingTop:I
    invoke-static {v9}, Lcom/htc/opensense/widget/AlbumAbsListView;->access$1000(Lcom/htc/opensense/widget/AlbumAbsListView;)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2366
    .end local v1           #firstView:Landroid/view/View;
    :goto_1
    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-virtual {v8, v0, v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->trackMotionScroll(II)V

    .line 2369
    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget v9, v9, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    iget-object v10, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget v10, v10, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2370
    .local v4, motionView:Landroid/view/View;
    if-eqz v4, :cond_3

    .line 2373
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget v9, v9, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionViewNewTop:I

    if-eq v8, v9, :cond_3

    .line 2374
    const/4 v3, 0x0

    .line 2378
    :cond_3
    if-eqz v3, :cond_5

    .line 2379
    iput v7, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->mLastFlingY:I

    .line 2380
    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-virtual {v8, p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2356
    .end local v4           #motionView:Landroid/view/View;
    :cond_4
    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-virtual {v8}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildCount()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .line 2357
    .local v5, offsetToLast:I
    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget v9, v9, Lcom/htc/opensense/widget/AlbumAbsListView;->mFirstPosition:I

    add-int/2addr v9, v5

    iput v9, v8, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionPosition:I

    .line 2359
    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-virtual {v8, v5}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2360
    .local v2, lastView:Landroid/view/View;
    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, v8, Lcom/htc/opensense/widget/AlbumAbsListView;->mMotionViewOriginalTop:I

    .line 2363
    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-virtual {v8}, Lcom/htc/opensense/widget/AlbumAbsListView;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    #getter for: Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingBottom:I
    invoke-static {v9}, Lcom/htc/opensense/widget/AlbumAbsListView;->access$1100(Lcom/htc/opensense/widget/AlbumAbsListView;)I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    #getter for: Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingTop:I
    invoke-static {v9}, Lcom/htc/opensense/widget/AlbumAbsListView;->access$1200(Lcom/htc/opensense/widget/AlbumAbsListView;)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    neg-int v8, v8

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 2382
    .end local v2           #lastView:Landroid/view/View;
    .end local v5           #offsetToLast:I
    .restart local v4       #motionView:Landroid/view/View;
    :cond_5
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0
.end method

.method public start(I)V
    .locals 9
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 2301
    if-gez p1, :cond_0

    move v2, v6

    .line 2302
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->mLastFlingY:I

    .line 2303
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/htc/widget/HtcScroller;->fling(IIIIIIII)V

    .line 2305
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    .line 2306
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-virtual {v0, p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2314
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 2301
    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 2317
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-virtual {v0, p0}, Lcom/htc/opensense/widget/AlbumAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2318
    return-void
.end method
