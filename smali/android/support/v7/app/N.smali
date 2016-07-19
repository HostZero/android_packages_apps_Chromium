.class Landroid/support/v7/app/N;
.super Landroid/support/v7/app/F;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Landroid/support/v4/view/B;
.implements Landroid/support/v7/internal/view/menu/j;


# instance fields
.field private A:Z

.field private B:Z

.field private C:[Landroid/support/v7/app/Z;

.field private D:Landroid/support/v7/app/Z;

.field private E:Z

.field private F:I

.field private final G:Ljava/lang/Runnable;

.field private H:Z

.field private I:Landroid/graphics/Rect;

.field private J:Landroid/graphics/Rect;

.field private K:Landroid/support/v7/internal/app/a;

.field m:Landroid/support/v7/c/a;

.field n:Landroid/support/v7/internal/widget/ActionBarContextView;

.field o:Landroid/widget/PopupWindow;

.field p:Ljava/lang/Runnable;

.field q:Landroid/support/v4/view/aP;

.field private r:Landroid/support/v7/internal/widget/u;

.field private s:Landroid/support/v7/app/V;

.field private t:Landroid/support/v7/app/aa;

.field private u:Z

.field private v:Landroid/view/ViewGroup;

.field private w:Landroid/view/ViewGroup;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/view/View;

.field private z:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/D;)V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/F;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/D;)V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/N;->q:Landroid/support/v4/view/aP;

    .line 123
    new-instance v0, Landroid/support/v7/app/O;

    invoke-direct {v0, p0}, Landroid/support/v7/app/O;-><init>(Landroid/support/v7/app/N;)V

    iput-object v0, p0, Landroid/support/v7/app/N;->G:Ljava/lang/Runnable;

    .line 146
    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/N;)I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Landroid/support/v7/app/N;->F:I

    return v0
.end method

.method static synthetic a(Landroid/support/v7/app/N;Landroid/view/Menu;)Landroid/support/v7/app/Z;
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/support/v7/app/N;->a(Landroid/view/Menu;)Landroid/support/v7/app/Z;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/Menu;)Landroid/support/v7/app/Z;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1457
    iget-object v3, p0, Landroid/support/v7/app/N;->C:[Landroid/support/v7/app/Z;

    .line 1458
    if-eqz v3, :cond_0

    array-length v0, v3

    :goto_0
    move v2, v1

    .line 1459
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1460
    aget-object v1, v3, v2

    .line 1461
    if-eqz v1, :cond_1

    iget-object v4, v1, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    if-ne v4, p1, :cond_1

    move-object v0, v1

    .line 1465
    :goto_2
    return-object v0

    :cond_0
    move v0, v1

    .line 1458
    goto :goto_0

    .line 1459
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1465
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private a(ILandroid/support/v7/app/Z;Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 1430
    if-nez p3, :cond_1

    .line 1432
    if-nez p2, :cond_0

    .line 1433
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/N;->C:[Landroid/support/v7/app/Z;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1434
    iget-object v0, p0, Landroid/support/v7/app/N;->C:[Landroid/support/v7/app/Z;

    aget-object p2, v0, p1

    .line 1438
    :cond_0
    if-eqz p2, :cond_1

    .line 1440
    iget-object p3, p2, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    .line 1445
    :cond_1
    if-eqz p2, :cond_3

    iget-boolean v0, p2, Landroid/support/v7/app/Z;->m:Z

    if-nez v0, :cond_3

    .line 1454
    :cond_2
    :goto_0
    return-void

    .line 1448
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/app/N;->n()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1452
    iget-object v0, p0, Landroid/support/v7/app/N;->c:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/app/N;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 92
    .line 14520
    invoke-direct {p0, p1}, Landroid/support/v7/app/N;->e(I)Landroid/support/v7/app/Z;

    move-result-object v0

    .line 14522
    iget-object v1, v0, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    if-eqz v1, :cond_1

    .line 14523
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 14524
    iget-object v2, v0, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v2, v1}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/os/Bundle;)V

    .line 14525
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 14526
    iput-object v1, v0, Landroid/support/v7/app/Z;->q:Landroid/os/Bundle;

    .line 14529
    :cond_0
    iget-object v1, v0, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/i;->f()V

    .line 14530
    iget-object v1, v0, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/i;->clear()V

    .line 14532
    :cond_1
    iput-boolean v4, v0, Landroid/support/v7/app/Z;->p:Z

    .line 14533
    iput-boolean v4, v0, Landroid/support/v7/app/Z;->o:Z

    .line 14536
    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    if-eqz v0, :cond_3

    .line 14538
    invoke-direct {p0, v3}, Landroid/support/v7/app/N;->e(I)Landroid/support/v7/app/Z;

    move-result-object v0

    .line 14539
    if-eqz v0, :cond_3

    .line 14540
    iput-boolean v3, v0, Landroid/support/v7/app/Z;->k:Z

    .line 14541
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/N;->b(Landroid/support/v7/app/Z;Landroid/view/KeyEvent;)Z

    .line 92
    :cond_3
    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/N;ILandroid/support/v7/app/Z;Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/N;->a(ILandroid/support/v7/app/Z;Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/N;Landroid/support/v7/app/Z;Z)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/N;->a(Landroid/support/v7/app/Z;Z)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/N;Landroid/support/v7/internal/view/menu/i;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/support/v7/app/N;->b(Landroid/support/v7/internal/view/menu/i;)V

    return-void
.end method

.method private a(Landroid/support/v7/app/Z;Landroid/view/KeyEvent;)V
    .locals 10

    .prologue
    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 997
    iget-boolean v0, p1, Landroid/support/v7/app/Z;->m:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/N;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1093
    :cond_0
    :goto_0
    return-void

    .line 1003
    :cond_1
    iget v0, p1, Landroid/support/v7/app/Z;->a:I

    if-nez v0, :cond_2

    .line 1004
    iget-object v4, p0, Landroid/support/v7/app/N;->a:Landroid/content/Context;

    .line 1005
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1006
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v5, 0x4

    if-ne v0, v5, :cond_3

    move v0, v9

    .line 1008
    :goto_1
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_4

    move v4, v9

    .line 1011
    :goto_2
    if-eqz v0, :cond_2

    if-nez v4, :cond_0

    .line 9199
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/F;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1017
    if-eqz v0, :cond_5

    iget v4, p1, Landroid/support/v7/app/Z;->a:I

    iget-object v5, p1, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1019
    invoke-direct {p0, p1, v9}, Landroid/support/v7/app/N;->a(Landroid/support/v7/app/Z;Z)V

    goto :goto_0

    :cond_3
    move v0, v3

    .line 1006
    goto :goto_1

    :cond_4
    move v4, v3

    .line 1008
    goto :goto_2

    .line 1023
    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/N;->a:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/WindowManager;

    .line 1024
    if-eqz v8, :cond_0

    .line 1029
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/N;->b(Landroid/support/v7/app/Z;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p1, Landroid/support/v7/app/Z;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Landroid/support/v7/app/Z;->o:Z

    if-eqz v0, :cond_15

    .line 1035
    :cond_6
    iget-object v0, p1, Landroid/support/v7/app/Z;->e:Landroid/view/ViewGroup;

    if-nez v0, :cond_d

    .line 10096
    invoke-virtual {p0}, Landroid/support/v7/app/N;->l()Landroid/content/Context;

    move-result-object v0

    .line 10855
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 10856
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 10857
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 10860
    const v5, 0x7f010073

    invoke-virtual {v4, v5, v1, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 10861
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_7

    .line 10862
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 10866
    :cond_7
    const v5, 0x7f0100b2

    invoke-virtual {v4, v5, v1, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 10867
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_c

    .line 10868
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v1, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 10873
    :goto_3
    new-instance v1, Landroid/support/v7/internal/view/a;

    invoke-direct {v1, v0, v3}, Landroid/support/v7/internal/view/a;-><init>(Landroid/content/Context;I)V

    .line 10874
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 10876
    iput-object v1, p1, Landroid/support/v7/app/Z;->j:Landroid/content/Context;

    .line 10878
    sget-object v0, Landroid/support/v7/a/a;->bJ:[I

    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 10879
    sget v1, Landroid/support/v7/a/a;->bM:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p1, Landroid/support/v7/app/Z;->b:I

    .line 10881
    sget v1, Landroid/support/v7/a/a;->bK:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p1, Landroid/support/v7/app/Z;->d:I

    .line 10883
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 10097
    new-instance v0, Landroid/support/v7/app/Y;

    iget-object v1, p1, Landroid/support/v7/app/Z;->j:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/Y;-><init>(Landroid/support/v7/app/N;Landroid/content/Context;)V

    iput-object v0, p1, Landroid/support/v7/app/Z;->e:Landroid/view/ViewGroup;

    .line 10098
    const/16 v0, 0x51

    iput v0, p1, Landroid/support/v7/app/Z;->c:I

    .line 1037
    iget-object v0, p1, Landroid/support/v7/app/Z;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 11190
    :cond_8
    :goto_4
    iget-object v0, p1, Landroid/support/v7/app/Z;->g:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 11191
    iget-object v0, p1, Landroid/support/v7/app/Z;->g:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/app/Z;->f:Landroid/view/View;

    move v0, v9

    .line 1045
    :goto_5
    if-eqz v0, :cond_0

    .line 12838
    iget-object v0, p1, Landroid/support/v7/app/Z;->f:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 12839
    iget-object v0, p1, Landroid/support/v7/app/Z;->g:Landroid/view/View;

    if-eqz v0, :cond_13

    move v0, v9

    .line 1045
    :goto_6
    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p1, Landroid/support/v7/app/Z;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1050
    if-nez v0, :cond_17

    .line 1051
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v1, v0

    .line 1054
    :goto_7
    iget v0, p1, Landroid/support/v7/app/Z;->b:I

    .line 1055
    iget-object v4, p1, Landroid/support/v7/app/Z;->e:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1057
    iget-object v0, p1, Landroid/support/v7/app/Z;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1058
    if-eqz v0, :cond_9

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_9

    .line 1059
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v7/app/Z;->f:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1061
    :cond_9
    iget-object v0, p1, Landroid/support/v7/app/Z;->e:Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v7/app/Z;->f:Landroid/view/View;

    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1067
    iget-object v0, p1, Landroid/support/v7/app/Z;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1068
    iget-object v0, p1, Landroid/support/v7/app/Z;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_a
    move v1, v2

    .line 1079
    :cond_b
    :goto_8
    iput-boolean v3, p1, Landroid/support/v7/app/Z;->l:Z

    .line 1081
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x3ea

    const/high16 v6, 0x820000

    const/4 v7, -0x3

    move v4, v3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 1088
    iget v1, p1, Landroid/support/v7/app/Z;->c:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1089
    iget v1, p1, Landroid/support/v7/app/Z;->d:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1091
    iget-object v1, p1, Landroid/support/v7/app/Z;->e:Landroid/view/ViewGroup;

    invoke-interface {v8, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1092
    iput-boolean v9, p1, Landroid/support/v7/app/Z;->m:Z

    goto/16 :goto_0

    .line 10870
    :cond_c
    const v1, 0x7f0f016c

    invoke-virtual {v4, v1, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto/16 :goto_3

    .line 1039
    :cond_d
    iget-boolean v0, p1, Landroid/support/v7/app/Z;->o:Z

    if-eqz v0, :cond_8

    iget-object v0, p1, Landroid/support/v7/app/Z;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_8

    .line 1041
    iget-object v0, p1, Landroid/support/v7/app/Z;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto/16 :goto_4

    .line 11195
    :cond_e
    iget-object v0, p1, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    if-eqz v0, :cond_12

    .line 11199
    iget-object v0, p0, Landroid/support/v7/app/N;->t:Landroid/support/v7/app/aa;

    if-nez v0, :cond_f

    .line 11200
    new-instance v0, Landroid/support/v7/app/aa;

    invoke-direct {v0, p0, v3}, Landroid/support/v7/app/aa;-><init>(Landroid/support/v7/app/N;B)V

    iput-object v0, p0, Landroid/support/v7/app/N;->t:Landroid/support/v7/app/aa;

    .line 11203
    :cond_f
    iget-object v0, p0, Landroid/support/v7/app/N;->t:Landroid/support/v7/app/aa;

    .line 11899
    iget-object v1, p1, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    if-nez v1, :cond_10

    const/4 v0, 0x0

    .line 11205
    :goto_9
    check-cast v0, Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/app/Z;->f:Landroid/view/View;

    .line 11207
    iget-object v0, p1, Landroid/support/v7/app/Z;->f:Landroid/view/View;

    if-eqz v0, :cond_12

    move v0, v9

    goto/16 :goto_5

    .line 11901
    :cond_10
    iget-object v1, p1, Landroid/support/v7/app/Z;->i:Landroid/support/v7/internal/view/menu/g;

    if-nez v1, :cond_11

    .line 11902
    new-instance v1, Landroid/support/v7/internal/view/menu/g;

    iget-object v4, p1, Landroid/support/v7/app/Z;->j:Landroid/content/Context;

    const v5, 0x7f04000f

    invoke-direct {v1, v4, v5}, Landroid/support/v7/internal/view/menu/g;-><init>(Landroid/content/Context;I)V

    iput-object v1, p1, Landroid/support/v7/app/Z;->i:Landroid/support/v7/internal/view/menu/g;

    .line 11904
    iget-object v1, p1, Landroid/support/v7/app/Z;->i:Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/menu/g;->a(Landroid/support/v7/internal/view/menu/y;)V

    .line 11905
    iget-object v0, p1, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    iget-object v1, p1, Landroid/support/v7/app/Z;->i:Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/x;)V

    .line 11908
    :cond_11
    iget-object v0, p1, Landroid/support/v7/app/Z;->i:Landroid/support/v7/internal/view/menu/g;

    iget-object v1, p1, Landroid/support/v7/app/Z;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/g;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/z;

    move-result-object v0

    goto :goto_9

    :cond_12
    move v0, v3

    .line 11207
    goto/16 :goto_5

    .line 12841
    :cond_13
    iget-object v0, p1, Landroid/support/v7/app/Z;->i:Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/g;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_14

    move v0, v9

    goto/16 :goto_6

    :cond_14
    move v0, v3

    goto/16 :goto_6

    .line 1070
    :cond_15
    iget-object v0, p1, Landroid/support/v7/app/Z;->g:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 1073
    iget-object v0, p1, Landroid/support/v7/app/Z;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1074
    if-eqz v0, :cond_16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v0, v1, :cond_b

    :cond_16
    move v1, v2

    goto/16 :goto_8

    :cond_17
    move-object v1, v0

    goto/16 :goto_7
.end method

.method private a(Landroid/support/v7/app/Z;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1333
    if-eqz p2, :cond_1

    iget v0, p1, Landroid/support/v7/app/Z;->a:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/u;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1335
    iget-object v0, p1, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    invoke-direct {p0, v0}, Landroid/support/v7/app/N;->b(Landroid/support/v7/internal/view/menu/i;)V

    .line 1362
    :cond_0
    :goto_0
    return-void

    .line 1339
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/N;->a:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1340
    if-eqz v0, :cond_2

    iget-boolean v1, p1, Landroid/support/v7/app/Z;->m:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/support/v7/app/Z;->e:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 1341
    iget-object v1, p1, Landroid/support/v7/app/Z;->e:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1343
    if-eqz p2, :cond_2

    .line 1344
    iget v0, p1, Landroid/support/v7/app/Z;->a:I

    invoke-direct {p0, v0, p1, v3}, Landroid/support/v7/app/N;->a(ILandroid/support/v7/app/Z;Landroid/view/Menu;)V

    .line 1348
    :cond_2
    iput-boolean v2, p1, Landroid/support/v7/app/Z;->k:Z

    .line 1349
    iput-boolean v2, p1, Landroid/support/v7/app/Z;->l:Z

    .line 1350
    iput-boolean v2, p1, Landroid/support/v7/app/Z;->m:Z

    .line 1353
    iput-object v3, p1, Landroid/support/v7/app/Z;->f:Landroid/view/View;

    .line 1357
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/app/Z;->o:Z

    .line 1359
    iget-object v0, p0, Landroid/support/v7/app/N;->D:Landroid/support/v7/app/Z;

    if-ne v0, p1, :cond_0

    .line 1360
    iput-object v3, p0, Landroid/support/v7/app/N;->D:Landroid/support/v7/app/Z;

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/app/N;Z)Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/N;->E:Z

    return v0
.end method

.method private a(Landroid/support/v7/app/Z;ILandroid/view/KeyEvent;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1487
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1507
    :cond_0
    :goto_0
    return v0

    .line 1495
    :cond_1
    iget-boolean v1, p1, Landroid/support/v7/app/Z;->k:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1, p3}, Landroid/support/v7/app/N;->b(Landroid/support/v7/app/Z;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p1, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    if-eqz v1, :cond_0

    .line 1497
    iget-object v0, p1, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, v1}, Landroid/support/v7/internal/view/menu/i;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v7/app/N;I)I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/N;->F:I

    return v0
.end method

.method static synthetic b(Landroid/support/v7/app/N;)V
    .locals 2

    .prologue
    .line 92
    .line 14648
    iget-object v0, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    if-eqz v0, :cond_0

    .line 14649
    iget-object v0, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/u;->i()V

    .line 14652
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/N;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 14653
    iget-object v0, p0, Landroid/support/v7/app/N;->v:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/app/N;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 14654
    iget-object v0, p0, Landroid/support/v7/app/N;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14655
    iget-object v0, p0, Landroid/support/v7/app/N;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 14657
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/N;->o:Landroid/widget/PopupWindow;

    .line 14659
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/app/N;->q()V

    .line 14661
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/N;->e(I)Landroid/support/v7/app/Z;

    move-result-object v0

    .line 14662
    if-eqz v0, :cond_3

    iget-object v1, v0, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    if-eqz v1, :cond_3

    .line 14663
    iget-object v0, v0, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->close()V

    .line 92
    :cond_3
    return-void
.end method

.method private b(Landroid/support/v7/internal/view/menu/i;)V
    .locals 2

    .prologue
    .line 1315
    iget-boolean v0, p0, Landroid/support/v7/app/N;->B:Z

    if-eqz v0, :cond_0

    .line 1326
    :goto_0
    return-void

    .line 1319
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/N;->B:Z

    .line 1320
    iget-object v0, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/u;->i()V

    .line 14199
    iget-object v0, p0, Landroid/support/v7/app/F;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1322
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/app/N;->n()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1323
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1325
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/N;->B:Z

    goto :goto_0
.end method

.method private b(Landroid/support/v7/app/Z;Landroid/view/KeyEvent;)Z
    .locals 11

    .prologue
    const v10, 0x7f010077

    const/16 v5, 0x6c

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1211
    invoke-virtual {p0}, Landroid/support/v7/app/N;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1311
    :cond_0
    :goto_0
    return v4

    .line 1216
    :cond_1
    iget-boolean v0, p1, Landroid/support/v7/app/Z;->k:Z

    if-eqz v0, :cond_2

    move v4, v3

    .line 1217
    goto :goto_0

    .line 1220
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/N;->D:Landroid/support/v7/app/Z;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/N;->D:Landroid/support/v7/app/Z;

    if-eq v0, p1, :cond_3

    .line 1222
    iget-object v0, p0, Landroid/support/v7/app/N;->D:Landroid/support/v7/app/Z;

    invoke-direct {p0, v0, v4}, Landroid/support/v7/app/N;->a(Landroid/support/v7/app/Z;Z)V

    .line 13199
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/F;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v7

    .line 1227
    if-eqz v7, :cond_4

    .line 1228
    iget v0, p1, Landroid/support/v7/app/Z;->a:I

    invoke-interface {v7, v0}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v7/app/Z;->g:Landroid/view/View;

    .line 1231
    :cond_4
    iget v0, p1, Landroid/support/v7/app/Z;->a:I

    if-eqz v0, :cond_5

    iget v0, p1, Landroid/support/v7/app/Z;->a:I

    if-ne v0, v5, :cond_f

    :cond_5
    move v6, v3

    .line 1234
    :goto_1
    if-eqz v6, :cond_6

    iget-object v0, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    if-eqz v0, :cond_6

    .line 1237
    iget-object v0, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/u;->h()V

    .line 1240
    :cond_6
    iget-object v0, p1, Landroid/support/v7/app/Z;->g:Landroid/view/View;

    if-nez v0, :cond_16

    if-eqz v6, :cond_7

    .line 14094
    iget-object v0, p0, Landroid/support/v7/app/F;->f:Landroid/support/v7/app/ActionBar;

    .line 1240
    instance-of v0, v0, Landroid/support/v7/internal/app/ToolbarActionBar;

    if-nez v0, :cond_16

    .line 1244
    :cond_7
    iget-object v0, p1, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    if-eqz v0, :cond_8

    iget-boolean v0, p1, Landroid/support/v7/app/Z;->p:Z

    if-eqz v0, :cond_12

    .line 1245
    :cond_8
    iget-object v0, p1, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    if-nez v0, :cond_c

    .line 14147
    iget-object v2, p0, Landroid/support/v7/app/N;->a:Landroid/content/Context;

    .line 14150
    iget v0, p1, Landroid/support/v7/app/Z;->a:I

    if-eqz v0, :cond_9

    iget v0, p1, Landroid/support/v7/app/Z;->a:I

    if-ne v0, v5, :cond_19

    :cond_9
    iget-object v0, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    if-eqz v0, :cond_19

    .line 14152
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 14153
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 14154
    const v0, 0x7f010076

    invoke-virtual {v8, v0, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 14157
    iget v0, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_10

    .line 14158
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 14159
    invoke-virtual {v0, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 14160
    iget v9, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v9, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 14161
    invoke-virtual {v0, v10, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 14168
    :goto_2
    iget v9, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_b

    .line 14169
    if-nez v0, :cond_a

    .line 14170
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 14171
    invoke-virtual {v0, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 14173
    :cond_a
    iget v5, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v5, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_b
    move-object v5, v0

    .line 14176
    if-eqz v5, :cond_19

    .line 14177
    new-instance v0, Landroid/support/v7/internal/view/a;

    invoke-direct {v0, v2, v4}, Landroid/support/v7/internal/view/a;-><init>(Landroid/content/Context;I)V

    .line 14178
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 14182
    :goto_3
    new-instance v2, Landroid/support/v7/internal/view/menu/i;

    invoke-direct {v2, v0}, Landroid/support/v7/internal/view/menu/i;-><init>(Landroid/content/Context;)V

    .line 14183
    invoke-virtual {v2, p0}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/j;)V

    .line 14184
    invoke-virtual {p1, v2}, Landroid/support/v7/app/Z;->a(Landroid/support/v7/internal/view/menu/i;)V

    .line 1246
    iget-object v0, p1, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    if-eqz v0, :cond_0

    .line 1251
    :cond_c
    if-eqz v6, :cond_e

    iget-object v0, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    if-eqz v0, :cond_e

    .line 1252
    iget-object v0, p0, Landroid/support/v7/app/N;->s:Landroid/support/v7/app/V;

    if-nez v0, :cond_d

    .line 1253
    new-instance v0, Landroid/support/v7/app/V;

    invoke-direct {v0, p0, v4}, Landroid/support/v7/app/V;-><init>(Landroid/support/v7/app/N;B)V

    iput-object v0, p0, Landroid/support/v7/app/N;->s:Landroid/support/v7/app/V;

    .line 1255
    :cond_d
    iget-object v0, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    iget-object v2, p1, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    iget-object v5, p0, Landroid/support/v7/app/N;->s:Landroid/support/v7/app/V;

    invoke-interface {v0, v2, v5}, Landroid/support/v7/internal/widget/u;->a(Landroid/view/Menu;Landroid/support/v7/internal/view/menu/y;)V

    .line 1260
    :cond_e
    iget-object v0, p1, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->f()V

    .line 1261
    iget v0, p1, Landroid/support/v7/app/Z;->a:I

    iget-object v2, p1, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    invoke-interface {v7, v0, v2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1263
    invoke-virtual {p1, v1}, Landroid/support/v7/app/Z;->a(Landroid/support/v7/internal/view/menu/i;)V

    .line 1265
    if-eqz v6, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    if-eqz v0, :cond_0

    .line 1267
    iget-object v0, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    iget-object v2, p0, Landroid/support/v7/app/N;->s:Landroid/support/v7/app/V;

    invoke-interface {v0, v1, v2}, Landroid/support/v7/internal/widget/u;->a(Landroid/view/Menu;Landroid/support/v7/internal/view/menu/y;)V

    goto/16 :goto_0

    :cond_f
    move v6, v4

    .line 1231
    goto/16 :goto_1

    .line 14164
    :cond_10
    invoke-virtual {v8, v10, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v0, v1

    goto :goto_2

    .line 1273
    :cond_11
    iput-boolean v4, p1, Landroid/support/v7/app/Z;->p:Z

    .line 1278
    :cond_12
    iget-object v0, p1, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->f()V

    .line 1282
    iget-object v0, p1, Landroid/support/v7/app/Z;->q:Landroid/os/Bundle;

    if-eqz v0, :cond_13

    .line 1283
    iget-object v0, p1, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    iget-object v2, p1, Landroid/support/v7/app/Z;->q:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/i;->b(Landroid/os/Bundle;)V

    .line 1284
    iput-object v1, p1, Landroid/support/v7/app/Z;->q:Landroid/os/Bundle;

    .line 1288
    :cond_13
    iget-object v0, p1, Landroid/support/v7/app/Z;->g:Landroid/view/View;

    iget-object v2, p1, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    invoke-interface {v7, v4, v0, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1289
    if-eqz v6, :cond_14

    iget-object v0, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    if-eqz v0, :cond_14

    .line 1292
    iget-object v0, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    iget-object v2, p0, Landroid/support/v7/app/N;->s:Landroid/support/v7/app/V;

    invoke-interface {v0, v1, v2}, Landroid/support/v7/internal/widget/u;->a(Landroid/view/Menu;Landroid/support/v7/internal/view/menu/y;)V

    .line 1294
    :cond_14
    iget-object v0, p1, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->g()V

    goto/16 :goto_0

    .line 1299
    :cond_15
    if-eqz p2, :cond_17

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    :goto_4
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 1301
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v3, :cond_18

    move v0, v3

    :goto_5
    iput-boolean v0, p1, Landroid/support/v7/app/Z;->n:Z

    .line 1302
    iget-object v0, p1, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    iget-boolean v1, p1, Landroid/support/v7/app/Z;->n:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->setQwertyMode(Z)V

    .line 1303
    iget-object v0, p1, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->g()V

    .line 1307
    :cond_16
    iput-boolean v3, p1, Landroid/support/v7/app/Z;->k:Z

    .line 1308
    iput-boolean v4, p1, Landroid/support/v7/app/Z;->l:Z

    .line 1309
    iput-object p1, p0, Landroid/support/v7/app/N;->D:Landroid/support/v7/app/Z;

    move v4, v3

    .line 1311
    goto/16 :goto_0

    .line 1299
    :cond_17
    const/4 v0, -0x1

    goto :goto_4

    :cond_18
    move v0, v4

    .line 1301
    goto :goto_5

    :cond_19
    move-object v0, v2

    goto/16 :goto_3
.end method

.method static synthetic c(Landroid/support/v7/app/N;I)I
    .locals 8

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    .line 14555
    iget-object v0, p0, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_c

    .line 14556
    iget-object v0, p0, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    .line 14557
    iget-object v0, p0, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 14561
    iget-object v1, p0, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 14562
    iget-object v1, p0, Landroid/support/v7/app/N;->I:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 14563
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/app/N;->I:Landroid/graphics/Rect;

    .line 14564
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/app/N;->J:Landroid/graphics/Rect;

    .line 14566
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/N;->I:Landroid/graphics/Rect;

    .line 14567
    iget-object v4, p0, Landroid/support/v7/app/N;->J:Landroid/graphics/Rect;

    .line 14568
    invoke-virtual {v1, v2, p1, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 14570
    iget-object v5, p0, Landroid/support/v7/app/N;->w:Landroid/view/ViewGroup;

    invoke-static {v5, v1, v4}, Landroid/support/v7/internal/widget/R;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 14571
    iget v1, v4, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_4

    move v1, p1

    .line 14572
    :goto_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v1, :cond_b

    .line 14574
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 14576
    iget-object v1, p0, Landroid/support/v7/app/N;->y:Landroid/view/View;

    if-nez v1, :cond_5

    .line 14577
    new-instance v1, Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/app/N;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/app/N;->y:Landroid/view/View;

    .line 14578
    iget-object v1, p0, Landroid/support/v7/app/N;->y:Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/app/N;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0097

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 14580
    iget-object v1, p0, Landroid/support/v7/app/N;->w:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/support/v7/app/N;->y:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move v1, v3

    .line 14594
    :goto_1
    iget-object v4, p0, Landroid/support/v7/app/N;->y:Landroid/view/View;

    if-eqz v4, :cond_7

    .line 14600
    :goto_2
    iget-boolean v4, p0, Landroid/support/v7/app/N;->j:Z

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    move p1, v2

    :cond_1
    move v7, v1

    move v1, v3

    move v3, v7

    .line 14610
    :goto_3
    if-eqz v3, :cond_2

    .line 14611
    iget-object v3, p0, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v3, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    move v0, v1

    .line 14615
    :goto_4
    iget-object v1, p0, Landroid/support/v7/app/N;->y:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 14616
    iget-object v1, p0, Landroid/support/v7/app/N;->y:Landroid/view/View;

    if-eqz v0, :cond_9

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :cond_3
    return p1

    :cond_4
    move v1, v2

    .line 14571
    goto :goto_0

    .line 14584
    :cond_5
    iget-object v1, p0, Landroid/support/v7/app/N;->y:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 14585
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_6

    .line 14586
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 14587
    iget-object v4, p0, Landroid/support/v7/app/N;->y:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move v3, v2

    .line 14594
    goto :goto_2

    .line 14605
    :cond_8
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v1, :cond_a

    .line 14607
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v1, v2

    goto :goto_3

    .line 14616
    :cond_9
    const/16 v2, 0x8

    goto :goto_5

    :cond_a
    move v3, v2

    move v1, v2

    goto :goto_3

    :cond_b
    move v1, v2

    goto :goto_1

    :cond_c
    move v0, v2

    goto :goto_4
.end method

.method static synthetic c(Landroid/support/v7/app/N;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/support/v7/app/N;->q()V

    return-void
.end method

.method static synthetic d(Landroid/support/v7/app/N;I)V
    .locals 2

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 15329
    invoke-direct {p0, v0}, Landroid/support/v7/app/N;->e(I)Landroid/support/v7/app/Z;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/N;->a(Landroid/support/v7/app/Z;Z)V

    .line 92
    return-void
.end method

.method private e(I)Landroid/support/v7/app/Z;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1470
    iget-object v0, p0, Landroid/support/v7/app/N;->C:[Landroid/support/v7/app/Z;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    .line 1471
    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Landroid/support/v7/app/Z;

    .line 1472
    if-eqz v0, :cond_1

    .line 1473
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1475
    :cond_1
    iput-object v1, p0, Landroid/support/v7/app/N;->C:[Landroid/support/v7/app/Z;

    move-object v0, v1

    .line 1478
    :cond_2
    aget-object v1, v0, p1

    .line 1479
    if-nez v1, :cond_3

    .line 1480
    new-instance v1, Landroid/support/v7/app/Z;

    invoke-direct {v1, p1}, Landroid/support/v7/app/Z;-><init>(I)V

    aput-object v1, v0, p1

    move-object v0, v1

    .line 1482
    :goto_0
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private f(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1511
    iget v0, p0, Landroid/support/v7/app/N;->F:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/app/N;->F:I

    .line 1513
    iget-boolean v0, p0, Landroid/support/v7/app/N;->E:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/N;->v:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1514
    iget-object v0, p0, Landroid/support/v7/app/N;->v:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/app/N;->G:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1515
    iput-boolean v2, p0, Landroid/support/v7/app/N;->E:Z

    .line 1517
    :cond_0
    return-void
.end method

.method private p()V
    .locals 9

    .prologue
    const/16 v8, 0x6c

    const v7, 0x1020002

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 279
    iget-boolean v0, p0, Landroid/support/v7/app/N;->u:Z

    if-nez v0, :cond_17

    .line 2307
    iget-object v0, p0, Landroid/support/v7/app/N;->a:Landroid/content/Context;

    sget-object v1, Landroid/support/v7/a/a;->bJ:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2309
    sget v1, Landroid/support/v7/a/a;->bN:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2310
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2311
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2315
    :cond_0
    sget v1, Landroid/support/v7/a/a;->bW:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2316
    invoke-virtual {p0, v6}, Landroid/support/v7/app/N;->b(I)Z

    .line 2321
    :cond_1
    :goto_0
    sget v1, Landroid/support/v7/a/a;->bO:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2322
    const/16 v1, 0x6d

    invoke-virtual {p0, v1}, Landroid/support/v7/app/N;->b(I)Z

    .line 2324
    :cond_2
    sget v1, Landroid/support/v7/a/a;->bP:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2325
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Landroid/support/v7/app/N;->b(I)Z

    .line 2327
    :cond_3
    sget v1, Landroid/support/v7/a/a;->bL:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/N;->k:Z

    .line 2328
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2330
    iget-object v0, p0, Landroid/support/v7/app/N;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2334
    iget-boolean v1, p0, Landroid/support/v7/app/N;->l:Z

    if-nez v1, :cond_a

    .line 2335
    iget-boolean v1, p0, Landroid/support/v7/app/N;->k:Z

    if-eqz v1, :cond_5

    .line 2337
    const v1, 0x7f04000b

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2341
    iput-boolean v5, p0, Landroid/support/v7/app/N;->i:Z

    iput-boolean v5, p0, Landroid/support/v7/app/N;->h:Z

    move-object v2, v0

    .line 2422
    :goto_1
    if-nez v2, :cond_d

    .line 2423
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/support/v7/app/N;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/N;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/N;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/N;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/N;->l:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2317
    :cond_4
    sget v1, Landroid/support/v7/a/a;->bN:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2319
    invoke-virtual {p0, v8}, Landroid/support/v7/app/N;->b(I)Z

    goto/16 :goto_0

    .line 2342
    :cond_5
    iget-boolean v0, p0, Landroid/support/v7/app/N;->h:Z

    if-eqz v0, :cond_18

    .line 2348
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 2349
    iget-object v0, p0, Landroid/support/v7/app/N;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v2, 0x7f010076

    invoke-virtual {v0, v2, v1, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2352
    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_9

    .line 2353
    new-instance v0, Landroid/support/v7/internal/view/a;

    iget-object v2, p0, Landroid/support/v7/app/N;->a:Landroid/content/Context;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v0, v2, v1}, Landroid/support/v7/internal/view/a;-><init>(Landroid/content/Context;I)V

    .line 2359
    :goto_2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040015

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2362
    const v1, 0x7f0e0087

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/widget/u;

    iput-object v1, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    .line 2364
    iget-object v1, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    .line 3199
    iget-object v2, p0, Landroid/support/v7/app/F;->b:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    .line 2364
    invoke-interface {v1, v2}, Landroid/support/v7/internal/widget/u;->a(Landroid/view/Window$Callback;)V

    .line 2369
    iget-boolean v1, p0, Landroid/support/v7/app/N;->i:Z

    if-eqz v1, :cond_6

    .line 2370
    iget-object v1, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    const/16 v2, 0x6d

    invoke-interface {v1, v2}, Landroid/support/v7/internal/widget/u;->a(I)V

    .line 2372
    :cond_6
    iget-boolean v1, p0, Landroid/support/v7/app/N;->z:Z

    if-eqz v1, :cond_7

    .line 2373
    iget-object v1, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/support/v7/internal/widget/u;->a(I)V

    .line 2375
    :cond_7
    iget-boolean v1, p0, Landroid/support/v7/app/N;->A:Z

    if-eqz v1, :cond_8

    .line 2376
    iget-object v1, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/support/v7/internal/widget/u;->a(I)V

    :cond_8
    move-object v2, v0

    .line 2378
    goto/16 :goto_1

    .line 2355
    :cond_9
    iget-object v0, p0, Landroid/support/v7/app/N;->a:Landroid/content/Context;

    goto :goto_2

    .line 2380
    :cond_a
    iget-boolean v1, p0, Landroid/support/v7/app/N;->j:Z

    if-eqz v1, :cond_b

    .line 2381
    const v1, 0x7f040014

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 2387
    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_c

    .line 2390
    new-instance v0, Landroid/support/v7/app/P;

    invoke-direct {v0, p0}, Landroid/support/v7/app/P;-><init>(Landroid/support/v7/app/N;)V

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/support/v4/view/T;)V

    move-object v2, v1

    goto/16 :goto_1

    .line 2384
    :cond_b
    const v1, 0x7f040013

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    goto :goto_3

    :cond_c
    move-object v0, v1

    .line 2412
    check-cast v0, Landroid/support/v7/internal/widget/x;

    new-instance v2, Landroid/support/v7/app/Q;

    invoke-direct {v2, p0}, Landroid/support/v7/app/Q;-><init>(Landroid/support/v7/app/N;)V

    invoke-interface {v0, v2}, Landroid/support/v7/internal/widget/x;->a(Landroid/support/v7/internal/widget/y;)V

    move-object v2, v1

    goto/16 :goto_1

    .line 2433
    :cond_d
    iget-object v0, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    if-nez v0, :cond_e

    .line 2434
    const v0, 0x7f0e0072

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/app/N;->x:Landroid/widget/TextView;

    .line 2438
    :cond_e
    invoke-static {v2}, Landroid/support/v7/internal/widget/R;->b(Landroid/view/View;)V

    .line 2440
    iget-object v0, p0, Landroid/support/v7/app/N;->b:Landroid/view/Window;

    invoke-virtual {v0, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2441
    const v1, 0x7f0e0023

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/widget/ContentFrameLayout;

    .line 2446
    :goto_4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_f

    .line 2447
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2448
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 2449
    invoke-virtual {v1, v4}, Landroid/support/v7/internal/widget/ContentFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 2453
    :cond_f
    iget-object v4, p0, Landroid/support/v7/app/N;->b:Landroid/view/Window;

    invoke-virtual {v4, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 2457
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setId(I)V

    .line 2458
    invoke-virtual {v1, v7}, Landroid/support/v7/internal/widget/ContentFrameLayout;->setId(I)V

    .line 2462
    instance-of v4, v0, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_10

    .line 2463
    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 2466
    :cond_10
    new-instance v0, Landroid/support/v7/app/R;

    invoke-direct {v0, p0}, Landroid/support/v7/app/R;-><init>(Landroid/support/v7/app/N;)V

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ContentFrameLayout;->a(Landroid/support/v7/internal/widget/t;)V

    .line 280
    iput-object v2, p0, Landroid/support/v7/app/N;->w:Landroid/view/ViewGroup;

    .line 283
    invoke-virtual {p0}, Landroid/support/v7/app/N;->o()Ljava/lang/CharSequence;

    move-result-object v0

    .line 284
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 285
    invoke-virtual {p0, v0}, Landroid/support/v7/app/N;->b(Ljava/lang/CharSequence;)V

    .line 3482
    :cond_11
    iget-object v0, p0, Landroid/support/v7/app/N;->w:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ContentFrameLayout;

    .line 3488
    iget-object v1, p0, Landroid/support/v7/app/N;->v:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/app/N;->v:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/app/N;->v:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/app/N;->v:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/internal/widget/ContentFrameLayout;->a(IIII)V

    .line 3492
    iget-object v1, p0, Landroid/support/v7/app/N;->a:Landroid/content/Context;

    sget-object v2, Landroid/support/v7/a/a;->bJ:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3493
    sget v2, Landroid/support/v7/a/a;->bU:I

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ContentFrameLayout;->a()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3494
    sget v2, Landroid/support/v7/a/a;->bV:I

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ContentFrameLayout;->b()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3496
    sget v2, Landroid/support/v7/a/a;->bS:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3497
    sget v2, Landroid/support/v7/a/a;->bS:I

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ContentFrameLayout;->c()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3499
    :cond_12
    sget v2, Landroid/support/v7/a/a;->bT:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3500
    sget v2, Landroid/support/v7/a/a;->bT:I

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ContentFrameLayout;->d()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3502
    :cond_13
    sget v2, Landroid/support/v7/a/a;->bQ:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3503
    sget v2, Landroid/support/v7/a/a;->bQ:I

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ContentFrameLayout;->e()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3505
    :cond_14
    sget v2, Landroid/support/v7/a/a;->bR:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 3506
    sget v2, Landroid/support/v7/a/a;->bR:I

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ContentFrameLayout;->f()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3508
    :cond_15
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3510
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ContentFrameLayout;->requestLayout()V

    .line 292
    iput-boolean v6, p0, Landroid/support/v7/app/N;->u:Z

    .line 299
    invoke-direct {p0, v5}, Landroid/support/v7/app/N;->e(I)Landroid/support/v7/app/Z;

    move-result-object v0

    .line 300
    invoke-virtual {p0}, Landroid/support/v7/app/N;->n()Z

    move-result v1

    if-nez v1, :cond_17

    if-eqz v0, :cond_16

    iget-object v0, v0, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    if-nez v0, :cond_17

    .line 301
    :cond_16
    invoke-direct {p0, v8}, Landroid/support/v7/app/N;->f(I)V

    .line 304
    :cond_17
    return-void

    :cond_18
    move-object v2, v3

    goto/16 :goto_1
.end method

.method private q()V
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Landroid/support/v7/app/N;->q:Landroid/support/v4/view/aP;

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Landroid/support/v7/app/N;->q:Landroid/support/v4/view/aP;

    invoke-virtual {v0}, Landroid/support/v4/view/aP;->b()V

    .line 802
    :cond_0
    return-void
.end method

.method private r()V
    .locals 2

    .prologue
    .line 1623
    iget-boolean v0, p0, Landroid/support/v7/app/N;->u:Z

    if-eqz v0, :cond_0

    .line 1624
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1627
    :cond_0
    return-void
.end method


# virtual methods
.method final a(Landroid/support/v7/c/b;)Landroid/support/v7/c/a;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 670
    invoke-direct {p0}, Landroid/support/v7/app/N;->q()V

    .line 671
    iget-object v0, p0, Landroid/support/v7/app/N;->m:Landroid/support/v7/c/a;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Landroid/support/v7/app/N;->m:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->c()V

    .line 675
    :cond_0
    new-instance v4, Landroid/support/v7/app/W;

    invoke-direct {v4, p0, p1}, Landroid/support/v7/app/W;-><init>(Landroid/support/v7/app/N;Landroid/support/v7/c/b;)V

    .line 677
    iget-object v0, p0, Landroid/support/v7/app/N;->e:Landroid/support/v7/app/D;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/app/N;->n()Z

    move-result v0

    if-nez v0, :cond_3

    .line 679
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/app/N;->e:Landroid/support/v7/app/D;

    invoke-interface {v0, v4}, Landroid/support/v7/app/D;->onWindowStartingSupportActionMode(Landroid/support/v7/c/b;)Landroid/support/v7/c/a;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 685
    :goto_0
    if-eqz v0, :cond_4

    .line 686
    iput-object v0, p0, Landroid/support/v7/app/N;->m:Landroid/support/v7/c/a;

    .line 792
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/N;->m:Landroid/support/v7/c/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/N;->e:Landroid/support/v7/app/D;

    if-eqz v0, :cond_2

    .line 793
    iget-object v0, p0, Landroid/support/v7/app/N;->e:Landroid/support/v7/app/D;

    iget-object v1, p0, Landroid/support/v7/app/N;->m:Landroid/support/v7/c/a;

    invoke-interface {v0, v1}, Landroid/support/v7/app/D;->onSupportActionModeStarted(Landroid/support/v7/c/a;)V

    .line 795
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/N;->m:Landroid/support/v7/c/a;

    return-object v0

    :catch_0
    move-exception v0

    :cond_3
    move-object v0, v3

    goto :goto_0

    .line 688
    :cond_4
    iget-object v0, p0, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-nez v0, :cond_5

    .line 689
    iget-boolean v0, p0, Landroid/support/v7/app/N;->k:Z

    if-eqz v0, :cond_7

    .line 691
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 692
    iget-object v0, p0, Landroid/support/v7/app/N;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 693
    const v6, 0x7f010076

    invoke-virtual {v0, v6, v5, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 696
    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_6

    .line 697
    iget-object v6, p0, Landroid/support/v7/app/N;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .line 698
    invoke-virtual {v6, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 699
    iget v0, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 701
    new-instance v0, Landroid/support/v7/internal/view/a;

    iget-object v7, p0, Landroid/support/v7/app/N;->a:Landroid/content/Context;

    invoke-direct {v0, v7, v2}, Landroid/support/v7/internal/view/a;-><init>(Landroid/content/Context;I)V

    .line 702
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 707
    :goto_2
    new-instance v6, Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-direct {v6, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 708
    new-instance v6, Landroid/widget/PopupWindow;

    const v7, 0x7f010089

    invoke-direct {v6, v0, v3, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v6, p0, Landroid/support/v7/app/N;->o:Landroid/widget/PopupWindow;

    .line 710
    iget-object v6, p0, Landroid/support/v7/app/N;->o:Landroid/widget/PopupWindow;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/support/v4/widget/O;->a(Landroid/widget/PopupWindow;I)V

    .line 712
    iget-object v6, p0, Landroid/support/v7/app/N;->o:Landroid/widget/PopupWindow;

    iget-object v7, p0, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 713
    iget-object v6, p0, Landroid/support/v7/app/N;->o:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 715
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x7f010078

    invoke-virtual {v6, v7, v5, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 717
    iget v5, v5, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 719
    iget-object v5, p0, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v5, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(I)V

    .line 720
    iget-object v0, p0, Landroid/support/v7/app/N;->o:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 721
    new-instance v0, Landroid/support/v7/app/S;

    invoke-direct {v0, p0}, Landroid/support/v7/app/S;-><init>(Landroid/support/v7/app/N;)V

    iput-object v0, p0, Landroid/support/v7/app/N;->p:Ljava/lang/Runnable;

    .line 755
    :cond_5
    :goto_3
    iget-object v0, p0, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 756
    invoke-direct {p0}, Landroid/support/v7/app/N;->q()V

    .line 757
    iget-object v0, p0, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->e()V

    .line 758
    new-instance v5, Landroid/support/v7/internal/view/b;

    iget-object v0, p0, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    iget-object v0, p0, Landroid/support/v7/app/N;->o:Landroid/widget/PopupWindow;

    if-nez v0, :cond_8

    move v0, v1

    :goto_4
    invoke-direct {v5, v6, v7, v4, v0}, Landroid/support/v7/internal/view/b;-><init>(Landroid/content/Context;Landroid/support/v7/internal/widget/ActionBarContextView;Landroid/support/v7/c/b;Z)V

    .line 760
    invoke-virtual {v5}, Landroid/support/v7/c/a;->b()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/a;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 761
    invoke-virtual {v5}, Landroid/support/v7/c/a;->d()V

    .line 762
    iget-object v0, p0, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/support/v7/c/a;)V

    .line 763
    iput-object v5, p0, Landroid/support/v7/app/N;->m:Landroid/support/v7/c/a;

    .line 764
    iget-object v0, p0, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->c(Landroid/view/View;F)V

    .line 765
    iget-object v0, p0, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->q(Landroid/view/View;)Landroid/support/v4/view/aP;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/view/aP;->a(F)Landroid/support/v4/view/aP;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/N;->q:Landroid/support/v4/view/aP;

    .line 766
    iget-object v0, p0, Landroid/support/v7/app/N;->q:Landroid/support/v4/view/aP;

    new-instance v1, Landroid/support/v7/app/U;

    invoke-direct {v1, p0}, Landroid/support/v7/app/U;-><init>(Landroid/support/v7/app/N;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/aP;->a(Landroid/support/v4/view/bc;)Landroid/support/v4/view/aP;

    .line 784
    iget-object v0, p0, Landroid/support/v7/app/N;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 785
    iget-object v0, p0, Landroid/support/v7/app/N;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/N;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 704
    :cond_6
    iget-object v0, p0, Landroid/support/v7/app/N;->a:Landroid/content/Context;

    goto/16 :goto_2

    .line 745
    :cond_7
    iget-object v0, p0, Landroid/support/v7/app/N;->w:Landroid/view/ViewGroup;

    const v5, 0x7f0e0085

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ViewStubCompat;

    .line 747
    if-eqz v0, :cond_5

    .line 749
    invoke-virtual {p0}, Landroid/support/v7/app/N;->l()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ViewStubCompat;->a(Landroid/view/LayoutInflater;)V

    .line 750
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContextView;

    iput-object v0, p0, Landroid/support/v7/app/N;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    goto/16 :goto_3

    :cond_8
    move v0, v2

    .line 758
    goto :goto_4

    .line 788
    :cond_9
    iput-object v3, p0, Landroid/support/v7/app/N;->m:Landroid/support/v7/c/a;

    goto/16 :goto_1
.end method

.method a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Landroid/support/v7/app/N;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/view/LayoutInflater$Factory;

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Landroid/support/v7/app/N;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/view/LayoutInflater$Factory;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 988
    if-eqz v0, :cond_0

    .line 992
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 254
    invoke-direct {p0}, Landroid/support/v7/app/N;->p()V

    .line 255
    iget-object v0, p0, Landroid/support/v7/app/N;->w:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 256
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 257
    iget-object v1, p0, Landroid/support/v7/app/N;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 258
    iget-object v0, p0, Landroid/support/v7/app/N;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 259
    return-void
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Landroid/support/v7/app/N;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/app/N;->u:Z

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0}, Landroid/support/v7/app/N;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->a(Landroid/content/res/Configuration;)V

    .line 225
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/i;)V
    .locals 6

    .prologue
    const/16 v5, 0x6c

    const/4 v4, 0x0

    .line 629
    .line 6103
    iget-object v0, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/u;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/app/N;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ap;->b(Landroid/view/ViewConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/u;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6199
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/F;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 6109
    iget-object v1, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/u;->d()Z

    move-result v1

    if-nez v1, :cond_3

    .line 6110
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/app/N;->n()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6112
    iget-boolean v1, p0, Landroid/support/v7/app/N;->E:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/v7/app/N;->F:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 6114
    iget-object v1, p0, Landroid/support/v7/app/N;->v:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v7/app/N;->G:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6115
    iget-object v1, p0, Landroid/support/v7/app/N;->G:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 6118
    :cond_1
    invoke-direct {p0, v4}, Landroid/support/v7/app/N;->e(I)Landroid/support/v7/app/Z;

    move-result-object v1

    .line 6122
    iget-object v2, v1, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Landroid/support/v7/app/Z;->p:Z

    if-nez v2, :cond_2

    iget-object v2, v1, Landroid/support/v7/app/Z;->g:Landroid/view/View;

    iget-object v3, v1, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    invoke-interface {v0, v4, v2, v3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6124
    iget-object v1, v1, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 6125
    iget-object v0, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/u;->f()Z

    .line 6135
    :cond_2
    :goto_0
    return-void

    .line 6129
    :cond_3
    iget-object v1, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/u;->g()Z

    .line 6130
    invoke-virtual {p0}, Landroid/support/v7/app/N;->n()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6131
    invoke-direct {p0, v4}, Landroid/support/v7/app/N;->e(I)Landroid/support/v7/app/Z;

    move-result-object v1

    .line 6132
    iget-object v1, v1, Landroid/support/v7/app/Z;->h:Landroid/support/v7/internal/view/menu/i;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 6138
    :cond_4
    invoke-direct {p0, v4}, Landroid/support/v7/app/N;->e(I)Landroid/support/v7/app/Z;

    move-result-object v0

    .line 6140
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/Z;->o:Z

    .line 6141
    invoke-direct {p0, v0, v4}, Landroid/support/v7/app/N;->a(Landroid/support/v7/app/Z;Z)V

    .line 6143
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/N;->a(Landroid/support/v7/app/Z;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/widget/Toolbar;)V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Landroid/support/v7/app/N;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/N;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 198
    instance-of v0, v0, Landroid/support/v7/internal/app/h;

    if-eqz v0, :cond_1

    .line 199
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/N;->g:Landroid/view/MenuInflater;

    .line 206
    new-instance v1, Landroid/support/v7/internal/app/ToolbarActionBar;

    iget-object v0, p0, Landroid/support/v7/app/N;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/app/N;->d:Landroid/view/Window$Callback;

    invoke-direct {v1, p1, v0, v2}, Landroid/support/v7/internal/app/ToolbarActionBar;-><init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    .line 208
    iput-object v1, p0, Landroid/support/v7/app/N;->f:Landroid/support/v7/app/ActionBar;

    .line 209
    iget-object v0, p0, Landroid/support/v7/app/N;->b:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/support/v7/internal/app/ToolbarActionBar;->g()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 210
    invoke-virtual {v1}, Landroid/support/v7/internal/app/ToolbarActionBar;->e()Z

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 245
    invoke-direct {p0}, Landroid/support/v7/app/N;->p()V

    .line 246
    iget-object v0, p0, Landroid/support/v7/app/N;->w:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 247
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 248
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 249
    iget-object v0, p0, Landroid/support/v7/app/N;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 250
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 263
    invoke-direct {p0}, Landroid/support/v7/app/N;->p()V

    .line 264
    iget-object v0, p0, Landroid/support/v7/app/N;->w:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 265
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 266
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    iget-object v0, p0, Landroid/support/v7/app/N;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 268
    return-void
.end method

.method final a(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 824
    invoke-virtual {p0}, Landroid/support/v7/app/N;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    .line 825
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, p2}, Landroid/support/v7/app/ActionBar;->a(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 855
    :cond_0
    :goto_0
    return v0

    .line 831
    :cond_1
    iget-object v2, p0, Landroid/support/v7/app/N;->D:Landroid/support/v7/app/Z;

    if-eqz v2, :cond_2

    .line 832
    iget-object v2, p0, Landroid/support/v7/app/N;->D:Landroid/support/v7/app/Z;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2, v0}, Landroid/support/v7/app/N;->a(Landroid/support/v7/app/Z;ILandroid/view/KeyEvent;I)Z

    move-result v2

    .line 834
    if-eqz v2, :cond_2

    .line 835
    iget-object v1, p0, Landroid/support/v7/app/N;->D:Landroid/support/v7/app/Z;

    if-eqz v1, :cond_0

    .line 836
    iget-object v1, p0, Landroid/support/v7/app/N;->D:Landroid/support/v7/app/Z;

    iput-boolean v0, v1, Landroid/support/v7/app/Z;->l:Z

    goto :goto_0

    .line 846
    :cond_2
    iget-object v2, p0, Landroid/support/v7/app/N;->D:Landroid/support/v7/app/Z;

    if-nez v2, :cond_3

    .line 847
    invoke-direct {p0, v1}, Landroid/support/v7/app/N;->e(I)Landroid/support/v7/app/Z;

    move-result-object v2

    .line 848
    invoke-direct {p0, v2, p2}, Landroid/support/v7/app/N;->b(Landroid/support/v7/app/Z;Landroid/view/KeyEvent;)Z

    .line 849
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2, v0}, Landroid/support/v7/app/N;->a(Landroid/support/v7/app/Z;ILandroid/view/KeyEvent;I)Z

    move-result v3

    .line 850
    iput-boolean v1, v2, Landroid/support/v7/app/Z;->k:Z

    .line 851
    if-nez v3, :cond_0

    :cond_3
    move v0, v1

    .line 855
    goto :goto_0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/i;Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 617
    .line 5199
    iget-object v0, p0, Landroid/support/v7/app/F;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 618
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/N;->n()Z

    move-result v1

    if-nez v1, :cond_0

    .line 619
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/i;->n()Landroid/support/v7/internal/view/menu/i;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v7/app/N;->a(Landroid/view/Menu;)Landroid/support/v7/app/Z;

    move-result-object v1

    .line 620
    if-eqz v1, :cond_0

    .line 621
    iget v1, v1, Landroid/support/v7/app/Z;->a:I

    invoke-interface {v0, v1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 624
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 860
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x52

    if-ne v0, v3, :cond_1

    .line 862
    iget-object v0, p0, Landroid/support/v7/app/N;->c:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7886
    :cond_0
    :goto_0
    return v1

    .line 867
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 868
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 869
    if-nez v0, :cond_3

    move v0, v1

    .line 871
    :goto_1
    if-eqz v0, :cond_5

    .line 6894
    packed-switch v3, :pswitch_data_0

    .line 6905
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_2

    .line 6908
    invoke-virtual {p0, v3, p1}, Landroid/support/v7/app/N;->a(ILandroid/view/KeyEvent;)Z

    :cond_2
    move v1, v2

    .line 871
    goto :goto_0

    :cond_3
    move v0, v2

    .line 869
    goto :goto_1

    .line 7365
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 7366
    invoke-direct {p0, v2}, Landroid/support/v7/app/N;->e(I)Landroid/support/v7/app/Z;

    move-result-object v0

    .line 7367
    iget-boolean v2, v0, Landroid/support/v7/app/Z;->m:Z

    if-nez v2, :cond_4

    .line 7368
    invoke-direct {p0, v0, p1}, Landroid/support/v7/app/N;->b(Landroid/support/v7/app/Z;Landroid/view/KeyEvent;)Z

    :cond_4
    move v0, v1

    :goto_2
    move v1, v0

    .line 871
    goto :goto_0

    .line 7875
    :cond_5
    sparse-switch v3, :sswitch_data_0

    :cond_6
    move v0, v2

    .line 7890
    goto :goto_2

    .line 8376
    :sswitch_0
    iget-object v0, p0, Landroid/support/v7/app/N;->m:Landroid/support/v7/c/a;

    if-nez v0, :cond_0

    .line 8381
    invoke-direct {p0, v2}, Landroid/support/v7/app/N;->e(I)Landroid/support/v7/app/Z;

    move-result-object v3

    .line 8382
    iget-object v0, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/u;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/app/N;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ap;->b(Landroid/view/ViewConfiguration;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 8385
    iget-object v0, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/u;->d()Z

    move-result v0

    if-nez v0, :cond_7

    .line 8386
    invoke-virtual {p0}, Landroid/support/v7/app/N;->n()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, v3, p1}, Landroid/support/v7/app/N;->b(Landroid/support/v7/app/Z;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 8387
    iget-object v0, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/u;->f()Z

    move-result v0

    .line 8416
    :goto_3
    if-eqz v0, :cond_0

    .line 8417
    iget-object v0, p0, Landroid/support/v7/app/N;->a:Landroid/content/Context;

    const-string/jumbo v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 8419
    if-eqz v0, :cond_b

    .line 8420
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto/16 :goto_0

    .line 8390
    :cond_7
    iget-object v0, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/u;->g()Z

    move-result v0

    goto :goto_3

    .line 8393
    :cond_8
    iget-boolean v0, v3, Landroid/support/v7/app/Z;->m:Z

    if-nez v0, :cond_9

    iget-boolean v0, v3, Landroid/support/v7/app/Z;->l:Z

    if-eqz v0, :cond_a

    .line 8396
    :cond_9
    iget-boolean v0, v3, Landroid/support/v7/app/Z;->m:Z

    .line 8398
    invoke-direct {p0, v3, v1}, Landroid/support/v7/app/N;->a(Landroid/support/v7/app/Z;Z)V

    goto :goto_3

    .line 8399
    :cond_a
    iget-boolean v0, v3, Landroid/support/v7/app/Z;->k:Z

    if-eqz v0, :cond_f

    .line 8401
    iget-boolean v0, v3, Landroid/support/v7/app/Z;->p:Z

    if-eqz v0, :cond_10

    .line 8404
    iput-boolean v2, v3, Landroid/support/v7/app/Z;->k:Z

    .line 8405
    invoke-direct {p0, v3, p1}, Landroid/support/v7/app/N;->b(Landroid/support/v7/app/Z;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 8408
    :goto_4
    if-eqz v0, :cond_f

    .line 8410
    invoke-direct {p0, v3, p1}, Landroid/support/v7/app/N;->a(Landroid/support/v7/app/Z;Landroid/view/KeyEvent;)V

    move v0, v1

    .line 8411
    goto :goto_3

    .line 8422
    :cond_b
    const-string/jumbo v0, "AppCompatDelegate"

    const-string/jumbo v2, "Couldn\'t get audio manager"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7880
    :sswitch_1
    invoke-direct {p0, v2}, Landroid/support/v7/app/N;->e(I)Landroid/support/v7/app/Z;

    move-result-object v0

    .line 7881
    if-eqz v0, :cond_c

    iget-boolean v3, v0, Landroid/support/v7/app/Z;->m:Z

    if-eqz v3, :cond_c

    .line 7882
    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/N;->a(Landroid/support/v7/app/Z;Z)V

    goto/16 :goto_0

    .line 8806
    :cond_c
    iget-object v0, p0, Landroid/support/v7/app/N;->m:Landroid/support/v7/c/a;

    if-eqz v0, :cond_d

    .line 8807
    iget-object v0, p0, Landroid/support/v7/app/N;->m:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->c()V

    move v0, v1

    .line 7885
    :goto_5
    if-eqz v0, :cond_6

    goto/16 :goto_0

    .line 8812
    :cond_d
    invoke-virtual {p0}, Landroid/support/v7/app/N;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 8813
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->f()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    .line 8814
    goto :goto_5

    :cond_e
    move v0, v2

    .line 8818
    goto :goto_5

    :cond_f
    move v0, v2

    goto :goto_3

    :cond_10
    move v0, v1

    goto :goto_4

    .line 6894
    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch

    .line 7875
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public final b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 272
    invoke-direct {p0}, Landroid/support/v7/app/N;->p()V

    .line 273
    iget-object v0, p0, Landroid/support/v7/app/N;->w:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 274
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    iget-object v0, p0, Landroid/support/v7/app/N;->c:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 276
    return-void
.end method

.method final b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    if-eqz v0, :cond_1

    .line 578
    iget-object v0, p0, Landroid/support/v7/app/N;->r:Landroid/support/v7/internal/widget/u;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/u;->a(Ljava/lang/CharSequence;)V

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 4094
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/F;->f:Landroid/support/v7/app/ActionBar;

    .line 579
    if-eqz v0, :cond_2

    .line 5094
    iget-object v0, p0, Landroid/support/v7/app/F;->f:Landroid/support/v7/app/ActionBar;

    .line 580
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 581
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/N;->x:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Landroid/support/v7/app/N;->x:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final b(I)Z
    .locals 5

    .prologue
    const/16 v0, 0x6c

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 515
    .line 3630
    const/16 v3, 0x8

    if-ne p1, v3, :cond_1

    .line 3631
    const-string/jumbo v3, "AppCompatDelegate"

    const-string/jumbo v4, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 517
    :cond_0
    :goto_0
    iget-boolean v3, p0, Landroid/support/v7/app/N;->l:Z

    if-eqz v3, :cond_2

    if-ne p1, v0, :cond_2

    move v0, v1

    .line 552
    :goto_1
    return v0

    .line 3634
    :cond_1
    const/16 v3, 0x9

    if-ne p1, v3, :cond_0

    .line 3635
    const-string/jumbo v3, "AppCompatDelegate"

    const-string/jumbo v4, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3637
    const/16 p1, 0x6d

    goto :goto_0

    .line 520
    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/app/N;->h:Z

    if-eqz v0, :cond_3

    if-ne p1, v2, :cond_3

    .line 522
    iput-boolean v1, p0, Landroid/support/v7/app/N;->h:Z

    .line 525
    :cond_3
    sparse-switch p1, :sswitch_data_0

    .line 552
    iget-object v0, p0, Landroid/support/v7/app/N;->b:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    goto :goto_1

    .line 527
    :sswitch_0
    invoke-direct {p0}, Landroid/support/v7/app/N;->r()V

    .line 528
    iput-boolean v2, p0, Landroid/support/v7/app/N;->h:Z

    move v0, v2

    .line 529
    goto :goto_1

    .line 531
    :sswitch_1
    invoke-direct {p0}, Landroid/support/v7/app/N;->r()V

    .line 532
    iput-boolean v2, p0, Landroid/support/v7/app/N;->i:Z

    move v0, v2

    .line 533
    goto :goto_1

    .line 535
    :sswitch_2
    invoke-direct {p0}, Landroid/support/v7/app/N;->r()V

    .line 536
    iput-boolean v2, p0, Landroid/support/v7/app/N;->j:Z

    move v0, v2

    .line 537
    goto :goto_1

    .line 539
    :sswitch_3
    invoke-direct {p0}, Landroid/support/v7/app/N;->r()V

    .line 540
    iput-boolean v2, p0, Landroid/support/v7/app/N;->z:Z

    move v0, v2

    .line 541
    goto :goto_1

    .line 543
    :sswitch_4
    invoke-direct {p0}, Landroid/support/v7/app/N;->r()V

    .line 544
    iput-boolean v2, p0, Landroid/support/v7/app/N;->A:Z

    move v0, v2

    .line 545
    goto :goto_1

    .line 547
    :sswitch_5
    invoke-direct {p0}, Landroid/support/v7/app/N;->r()V

    .line 548
    iput-boolean v2, p0, Landroid/support/v7/app/N;->l:Z

    move v0, v2

    .line 549
    goto :goto_1

    .line 525
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_3
        0x5 -> :sswitch_4
        0xa -> :sswitch_2
        0x6c -> :sswitch_0
        0x6d -> :sswitch_1
    .end sparse-switch
.end method

.method public final c()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 150
    iget-object v0, p0, Landroid/support/v7/app/N;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v7/app/N;->v:Landroid/view/ViewGroup;

    .line 152
    iget-object v0, p0, Landroid/support/v7/app/N;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Landroid/support/v7/app/N;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/app/Q;->b(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2094
    iget-object v0, p0, Landroid/support/v7/app/F;->f:Landroid/support/v7/app/ActionBar;

    .line 156
    if-nez v0, :cond_1

    .line 157
    iput-boolean v1, p0, Landroid/support/v7/app/N;->H:Z

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->b(Z)V

    goto :goto_0
.end method

.method final c(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 588
    const/16 v0, 0x6c

    if-ne p1, v0, :cond_1

    .line 589
    invoke-virtual {p0}, Landroid/support/v7/app/N;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 590
    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->d(Z)V

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    if-nez p1, :cond_0

    .line 596
    invoke-direct {p0, p1}, Landroid/support/v7/app/N;->e(I)Landroid/support/v7/app/Z;

    move-result-object v0

    .line 597
    iget-boolean v1, v0, Landroid/support/v7/app/Z;->m:Z

    if-eqz v1, :cond_0

    .line 598
    invoke-direct {p0, v0, v2}, Landroid/support/v7/app/N;->a(Landroid/support/v7/app/Z;Z)V

    goto :goto_0
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Landroid/support/v7/app/N;->p()V

    .line 169
    return-void
.end method

.method final d(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 605
    const/16 v1, 0x6c

    if-ne p1, v1, :cond_1

    .line 606
    invoke-virtual {p0}, Landroid/support/v7/app/N;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 607
    if-eqz v1, :cond_0

    .line 608
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->d(Z)V

    .line 612
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p0}, Landroid/support/v7/app/N;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    .line 231
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->c(Z)V

    .line 233
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 237
    invoke-virtual {p0}, Landroid/support/v7/app/N;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_0

    .line 239
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->c(Z)V

    .line 241
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 662
    invoke-virtual {p0}, Landroid/support/v7/app/N;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 663
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    :goto_0
    return-void

    .line 665
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/N;->f(I)V

    goto :goto_0
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 958
    iget-object v0, p0, Landroid/support/v7/app/N;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 959
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    .line 960
    invoke-static {v0, p0}, Landroid/support/v4/view/v;->a(Landroid/view/LayoutInflater;Landroid/support/v4/view/B;)V

    .line 965
    :goto_0
    return-void

    .line 962
    :cond_0
    const-string/jumbo v0, "AppCompatDelegate"

    const-string/jumbo v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final k()V
    .locals 3

    .prologue
    .line 173
    invoke-direct {p0}, Landroid/support/v7/app/N;->p()V

    .line 175
    iget-boolean v0, p0, Landroid/support/v7/app/N;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/N;->f:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/N;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 180
    new-instance v1, Landroid/support/v7/internal/app/h;

    iget-object v0, p0, Landroid/support/v7/app/N;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Landroid/support/v7/app/N;->i:Z

    invoke-direct {v1, v0, v2}, Landroid/support/v7/internal/app/h;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Landroid/support/v7/app/N;->f:Landroid/support/v7/app/ActionBar;

    .line 185
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/N;->f:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Landroid/support/v7/app/N;->f:Landroid/support/v7/app/ActionBar;

    iget-boolean v1, p0, Landroid/support/v7/app/N;->H:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->b(Z)V

    goto :goto_0

    .line 182
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/N;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 183
    new-instance v1, Landroid/support/v7/internal/app/h;

    iget-object v0, p0, Landroid/support/v7/app/N;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Landroid/support/v7/internal/app/h;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Landroid/support/v7/app/N;->f:Landroid/support/v7/app/ActionBar;

    goto :goto_1
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 974
    invoke-virtual {p0, p2, p3, p4}, Landroid/support/v7/app/N;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 975
    if-eqz v0, :cond_0

    .line 980
    :goto_0
    return-object v0

    .line 8916
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_2

    move v6, v7

    .line 8918
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/N;->K:Landroid/support/v7/internal/app/a;

    if-nez v0, :cond_1

    .line 8919
    new-instance v0, Landroid/support/v7/internal/app/a;

    invoke-direct {v0}, Landroid/support/v7/internal/app/a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/N;->K:Landroid/support/v7/internal/app/a;

    .line 8923
    :cond_1
    if-eqz v6, :cond_6

    iget-boolean v0, p0, Landroid/support/v7/app/N;->u:Z

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    .line 8933
    if-nez v0, :cond_7

    move v0, v2

    .line 8923
    :goto_2
    if-eqz v0, :cond_6

    move v5, v7

    .line 8926
    :goto_3
    iget-object v0, p0, Landroid/support/v7/app/N;->K:Landroid/support/v7/internal/app/a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/support/v7/internal/app/a;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v6, v2

    .line 8916
    goto :goto_1

    .line 8952
    :cond_3
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 8938
    :goto_4
    if-nez v1, :cond_4

    move v0, v7

    .line 8943
    goto :goto_2

    .line 8944
    :cond_4
    iget-object v0, p0, Landroid/support/v7/app/N;->v:Landroid/view/ViewGroup;

    if-eq v1, v0, :cond_5

    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_5

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->B(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_5
    move v0, v2

    .line 8950
    goto :goto_2

    :cond_6
    move v5, v2

    .line 8923
    goto :goto_3

    :cond_7
    move-object v1, v0

    goto :goto_4
.end method
