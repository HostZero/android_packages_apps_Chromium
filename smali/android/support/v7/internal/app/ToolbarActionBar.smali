.class public final Landroid/support/v7/internal/app/ToolbarActionBar;
.super Landroid/support/v7/app/ActionBar;
.source "ToolbarActionBar.java"


# instance fields
.field private a:Landroid/support/v7/internal/widget/v;

.field private b:Z

.field private c:Landroid/view/Window$Callback;

.field private d:Z

.field private e:Z

.field private f:Ljava/util/ArrayList;

.field private g:Landroid/support/v7/internal/view/menu/g;

.field private final h:Ljava/lang/Runnable;

.field private final i:Landroid/support/v7/widget/m;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/support/v7/app/ActionBar;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->f:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Landroid/support/v7/internal/app/c;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/app/c;-><init>(Landroid/support/v7/internal/app/ToolbarActionBar;)V

    iput-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->h:Ljava/lang/Runnable;

    .line 69
    new-instance v0, Landroid/support/v7/internal/app/d;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/app/d;-><init>(Landroid/support/v7/internal/app/ToolbarActionBar;)V

    iput-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->i:Landroid/support/v7/widget/m;

    .line 78
    new-instance v0, Landroid/support/v7/internal/widget/O;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v7/internal/widget/O;-><init>(Landroid/support/v7/widget/Toolbar;Z)V

    iput-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->a:Landroid/support/v7/internal/widget/v;

    .line 79
    new-instance v0, Landroid/support/v7/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;

    invoke-direct {v0, p0, p3}, Landroid/support/v7/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;-><init>(Landroid/support/v7/internal/app/ToolbarActionBar;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->c:Landroid/view/Window$Callback;

    .line 80
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->a:Landroid/support/v7/internal/widget/v;

    iget-object v1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->c:Landroid/view/Window$Callback;

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/v;->a(Landroid/view/Window$Callback;)V

    .line 81
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->i:Landroid/support/v7/widget/m;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener$486aeec7(Landroid/support/v7/widget/m;)V

    .line 82
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->a:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0, p2}, Landroid/support/v7/internal/widget/v;->a(Ljava/lang/CharSequence;)V

    .line 83
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/app/ToolbarActionBar;Landroid/view/Menu;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 51
    .line 1516
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->g:Landroid/support/v7/internal/view/menu/g;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/support/v7/internal/view/menu/i;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 1517
    check-cast v0, Landroid/support/v7/internal/view/menu/i;

    .line 1519
    iget-object v2, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->a:Landroid/support/v7/internal/widget/v;

    invoke-interface {v2}, Landroid/support/v7/internal/widget/v;->b()Landroid/content/Context;

    move-result-object v2

    .line 1520
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 1521
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 1522
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1525
    const v5, 0x7f010073

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1526
    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_0

    .line 1527
    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1531
    :cond_0
    const v5, 0x7f0100b2

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1532
    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_3

    .line 1533
    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v3, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1538
    :goto_0
    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-direct {v3, v2, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1539
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1542
    new-instance v2, Landroid/support/v7/internal/view/menu/g;

    const v4, 0x7f04000f

    invoke-direct {v2, v3, v4}, Landroid/support/v7/internal/view/menu/g;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->g:Landroid/support/v7/internal/view/menu/g;

    .line 1543
    iget-object v2, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->g:Landroid/support/v7/internal/view/menu/g;

    new-instance v3, Landroid/support/v7/internal/app/g;

    invoke-direct {v3, p0, v7}, Landroid/support/v7/internal/app/g;-><init>(Landroid/support/v7/internal/app/ToolbarActionBar;B)V

    invoke-virtual {v2, v3}, Landroid/support/v7/internal/view/menu/g;->a(Landroid/support/v7/internal/view/menu/y;)V

    .line 1544
    iget-object v2, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->g:Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/x;)V

    .line 1505
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->g:Landroid/support/v7/internal/view/menu/g;

    if-nez v0, :cond_4

    :cond_2
    move-object v0, v1

    .line 1510
    :goto_1
    return-object v0

    .line 1535
    :cond_3
    const v3, 0x7f0f016c

    invoke-virtual {v4, v3, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0

    .line 1509
    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->g:Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/g;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 1510
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->g:Landroid/support/v7/internal/view/menu/g;

    iget-object v1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->a:Landroid/support/v7/internal/widget/v;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/v;->a()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/g;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/z;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_1

    :cond_5
    move-object v0, v1

    .line 51
    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v7/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->c:Landroid/view/Window$Callback;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/internal/app/ToolbarActionBar;Z)Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->b:Z

    return v0
.end method

.method static synthetic b(Landroid/support/v7/internal/app/ToolbarActionBar;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->b:Z

    return v0
.end method

.method static synthetic c(Landroid/support/v7/internal/app/ToolbarActionBar;)Landroid/support/v7/internal/widget/v;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->a:Landroid/support/v7/internal/widget/v;

    return-object v0
.end method

.method private i()Landroid/view/Menu;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 578
    iget-boolean v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->d:Z

    if-nez v0, :cond_0

    .line 579
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->a:Landroid/support/v7/internal/widget/v;

    new-instance v1, Landroid/support/v7/internal/app/e;

    invoke-direct {v1, p0, v3}, Landroid/support/v7/internal/app/e;-><init>(Landroid/support/v7/internal/app/ToolbarActionBar;B)V

    new-instance v2, Landroid/support/v7/internal/app/f;

    invoke-direct {v2, p0, v3}, Landroid/support/v7/internal/app/f;-><init>(Landroid/support/v7/internal/app/ToolbarActionBar;B)V

    invoke-interface {v0, v1, v2}, Landroid/support/v7/internal/widget/v;->a(Landroid/support/v7/internal/view/menu/y;Landroid/support/v7/internal/view/menu/j;)V

    .line 581
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->d:Z

    .line 583
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->a:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->q()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->a:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->n()I

    move-result v0

    return v0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 232
    iget-object v1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->a:Landroid/support/v7/internal/widget/v;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->a:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Landroid/support/v7/internal/widget/v;->b(Ljava/lang/CharSequence;)V

    .line 233
    return-void

    .line 232
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(II)V
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->a:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->n()I

    move-result v0

    .line 258
    iget-object v1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->a:Landroid/support/v7/internal/widget/v;

    and-int/lit8 v2, p1, 0x4

    and-int/lit8 v0, v0, -0x5

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Landroid/support/v7/internal/widget/v;->a(I)V

    .line 259
    return-void
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBar;->a(Landroid/content/res/Configuration;)V

    .line 196
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->a:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/v;->a(Landroid/graphics/drawable/Drawable;)V

    .line 166
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->a:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/v;->a(Ljava/lang/CharSequence;)V

    .line 238
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 273
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/app/ToolbarActionBar;->a(II)V

    .line 274
    return-void

    .line 273
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 469
    invoke-direct {p0}, Landroid/support/v7/internal/app/ToolbarActionBar;->i()Landroid/view/Menu;

    move-result-object v3

    .line 470
    if-eqz v3, :cond_0

    .line 471
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    :goto_0
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 473
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 474
    invoke-interface {v3, p1, p2, v2}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 479
    :cond_0
    return v1

    .line 471
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 473
    goto :goto_1
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->a:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->p()I

    move-result v0

    return v0
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->a:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/v;->b(I)V

    .line 186
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->a:Landroid/support/v7/internal/widget/v;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/v;->c(I)V

    .line 412
    return-void
.end method

.method public final c(Z)V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public final d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->a:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final d(Z)V
    .locals 3

    .prologue
    .line 491
    iget-boolean v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->e:Z

    if-ne p1, v0, :cond_1

    .line 500
    :cond_0
    return-void

    .line 494
    :cond_1
    iput-boolean p1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->e:Z

    .line 496
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 497
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 498
    iget-object v2, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 497
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->a:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 427
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->a:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->h:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 428
    const/4 v0, 0x1

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->a:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->a:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->d()V

    .line 435
    const/4 v0, 0x1

    .line 437
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->c:Landroid/view/Window$Callback;

    return-object v0
.end method

.method final h()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 441
    invoke-direct {p0}, Landroid/support/v7/internal/app/ToolbarActionBar;->i()Landroid/view/Menu;

    move-result-object v1

    .line 442
    instance-of v2, v1, Landroid/support/v7/internal/view/menu/i;

    if-eqz v2, :cond_4

    move-object v0, v1

    check-cast v0, Landroid/support/v7/internal/view/menu/i;

    move-object v2, v0

    .line 443
    :goto_0
    if-eqz v2, :cond_0

    .line 444
    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/i;->f()V

    .line 447
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 448
    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->c:Landroid/view/Window$Callback;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/app/ToolbarActionBar;->c:Landroid/view/Window$Callback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, v1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 450
    :cond_1
    invoke-interface {v1}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    :cond_2
    if-eqz v2, :cond_3

    .line 454
    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/i;->g()V

    .line 457
    :cond_3
    return-void

    :cond_4
    move-object v2, v0

    .line 442
    goto :goto_0

    .line 453
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    .line 454
    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/i;->g()V

    :cond_5
    throw v0
.end method
