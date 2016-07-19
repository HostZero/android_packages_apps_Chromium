.class public final Landroid/support/v7/internal/widget/ActivityChooserView;
.super Landroid/view/ViewGroup;
.source "ActivityChooserView.java"


# instance fields
.field private final a:Landroid/support/v7/internal/widget/p;

.field private final b:Landroid/support/v7/internal/widget/q;

.field private final c:Landroid/support/v7/widget/LinearLayoutCompat;

.field private final d:Landroid/widget/FrameLayout;

.field private final e:Landroid/widget/FrameLayout;

.field private final f:Landroid/database/DataSetObserver;

.field private final g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private h:Landroid/support/v7/widget/aj;

.field private i:Z


# direct methods
.method static synthetic a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/p;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->a:Landroid/support/v7/internal/widget/p;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/ActivityChooserView;I)V
    .locals 2

    .prologue
    .line 68
    .line 5348
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->a:Landroid/support/v7/internal/widget/p;

    .line 5349
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No data model. Did you call #setDataModel?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/ActivityChooserView;Z)Z
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->i:Z

    return p1
.end method

.method private b()Landroid/support/v7/widget/aj;
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->h:Landroid/support/v7/widget/aj;

    if-nez v0, :cond_0

    .line 506
    new-instance v0, Landroid/support/v7/widget/aj;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/aj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->h:Landroid/support/v7/widget/aj;

    .line 507
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->h:Landroid/support/v7/widget/aj;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->a:Landroid/support/v7/internal/widget/p;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/aj;->a(Landroid/widget/ListAdapter;)V

    .line 508
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->h:Landroid/support/v7/widget/aj;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/aj;->a(Landroid/view/View;)V

    .line 509
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->h:Landroid/support/v7/widget/aj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/aj;->a(Z)V

    .line 510
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->h:Landroid/support/v7/widget/aj;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Landroid/support/v7/internal/widget/q;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/aj;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 511
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->h:Landroid/support/v7/widget/aj;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Landroid/support/v7/internal/widget/q;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/aj;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 513
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->h:Landroid/support/v7/widget/aj;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/internal/widget/ActivityChooserView;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->i:Z

    return v0
.end method

.method static synthetic c(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->e:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->d:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic e(Landroid/support/v7/internal/widget/ActivityChooserView;)I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic f(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 392
    .line 1408
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->b()Landroid/support/v7/widget/aj;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->k()Z

    move-result v0

    .line 392
    if-eqz v0, :cond_0

    .line 393
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->b()Landroid/support/v7/widget/aj;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->i()V

    .line 394
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 399
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected final onAttachedToWindow()V
    .locals 2

    .prologue
    .line 413
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 414
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->a:Landroid/support/v7/internal/widget/p;

    .line 1808
    const/4 v0, 0x0

    .line 415
    if-eqz v0, :cond_0

    .line 416
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->f:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/k;->registerObserver(Ljava/lang/Object;)V

    .line 419
    :cond_0
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 423
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 424
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->a:Landroid/support/v7/internal/widget/p;

    .line 2808
    const/4 v0, 0x0

    .line 425
    if-eqz v0, :cond_0

    .line 426
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->f:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/k;->unregisterObserver(Ljava/lang/Object;)V

    .line 428
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 430
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3408
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->b()Landroid/support/v7/widget/aj;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->k()Z

    move-result v0

    .line 432
    if-eqz v0, :cond_2

    .line 433
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a()Z

    .line 436
    :cond_2
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 454
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->c:Landroid/support/v7/widget/LinearLayoutCompat;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->layout(IIII)V

    .line 4408
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->b()Landroid/support/v7/widget/aj;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->k()Z

    move-result v0

    .line 455
    if-nez v0, :cond_0

    .line 456
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a()Z

    .line 458
    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 3

    .prologue
    .line 440
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->c:Landroid/support/v7/widget/LinearLayoutCompat;

    .line 444
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActivityChooserView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 448
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/internal/widget/ActivityChooserView;->measureChild(Landroid/view/View;II)V

    .line 449
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->setMeasuredDimension(II)V

    .line 450
    return-void
.end method
