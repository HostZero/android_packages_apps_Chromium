.class public Landroid/support/v7/widget/aj;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Method;


# instance fields
.field private A:Z

.field b:I

.field private d:Landroid/content/Context;

.field private e:Landroid/widget/PopupWindow;

.field private f:Landroid/widget/ListAdapter;

.field private g:Landroid/support/v7/widget/am;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:I

.field private o:Z

.field private p:Z

.field private q:I

.field private r:Landroid/database/DataSetObserver;

.field private s:Landroid/view/View;

.field private t:Landroid/widget/AdapterView$OnItemClickListener;

.field private final u:Landroid/support/v7/widget/au;

.field private final v:Landroid/support/v7/widget/at;

.field private final w:Landroid/support/v7/widget/as;

.field private final x:Landroid/support/v7/widget/aq;

.field private final y:Landroid/os/Handler;

.field private z:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 83
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string/jumbo v1, "setClipToScreenEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/aj;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    :try_start_1
    const-class v0, Landroid/widget/PopupWindow;

    const-string/jumbo v1, "getMaxAvailableHeight"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/aj;->c:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    :goto_1
    return-void

    .line 86
    :catch_0
    move-exception v0

    const-string/jumbo v0, "ListPopupWindow"

    const-string/jumbo v1, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :catch_1
    move-exception v0

    const-string/jumbo v0, "ListPopupWindow"

    const-string/jumbo v1, "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 203
    const/4 v0, 0x0

    const v1, 0x7f0100ad

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/aj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/aj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x2

    const/4 v2, 0x0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput v0, p0, Landroid/support/v7/widget/aj;->h:I

    .line 103
    iput v0, p0, Landroid/support/v7/widget/aj;->i:I

    .line 106
    const/16 v0, 0x3ea

    iput v0, p0, Landroid/support/v7/widget/aj;->l:I

    .line 109
    iput v2, p0, Landroid/support/v7/widget/aj;->n:I

    .line 111
    iput-boolean v2, p0, Landroid/support/v7/widget/aj;->o:Z

    .line 112
    iput-boolean v2, p0, Landroid/support/v7/widget/aj;->p:Z

    .line 113
    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/v7/widget/aj;->b:I

    .line 116
    iput v2, p0, Landroid/support/v7/widget/aj;->q:I

    .line 127
    new-instance v0, Landroid/support/v7/widget/au;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/au;-><init>(Landroid/support/v7/widget/aj;B)V

    iput-object v0, p0, Landroid/support/v7/widget/aj;->u:Landroid/support/v7/widget/au;

    .line 128
    new-instance v0, Landroid/support/v7/widget/at;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/at;-><init>(Landroid/support/v7/widget/aj;B)V

    iput-object v0, p0, Landroid/support/v7/widget/aj;->v:Landroid/support/v7/widget/at;

    .line 129
    new-instance v0, Landroid/support/v7/widget/as;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/as;-><init>(Landroid/support/v7/widget/aj;B)V

    iput-object v0, p0, Landroid/support/v7/widget/aj;->w:Landroid/support/v7/widget/as;

    .line 130
    new-instance v0, Landroid/support/v7/widget/aq;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/aq;-><init>(Landroid/support/v7/widget/aj;B)V

    iput-object v0, p0, Landroid/support/v7/widget/aj;->x:Landroid/support/v7/widget/aq;

    .line 135
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/aj;->z:Landroid/graphics/Rect;

    .line 239
    iput-object p1, p0, Landroid/support/v7/widget/aj;->d:Landroid/content/Context;

    .line 240
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/v7/widget/aj;->y:Landroid/os/Handler;

    .line 242
    sget-object v0, Landroid/support/v7/a/a;->am:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 244
    sget v1, Landroid/support/v7/a/a;->an:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/aj;->j:I

    .line 246
    sget v1, Landroid/support/v7/a/a;->ao:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/aj;->k:I

    .line 248
    iget v1, p0, Landroid/support/v7/widget/aj;->k:I

    if-eqz v1, :cond_0

    .line 249
    iput-boolean v3, p0, Landroid/support/v7/widget/aj;->m:Z

    .line 251
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 253
    new-instance v0, Landroid/support/v7/internal/widget/r;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v7/internal/widget/r;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    .line 254
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 257
    iget-object v0, p0, Landroid/support/v7/widget/aj;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 258
    invoke-static {v0}, Landroid/support/v4/f/h;->a(Ljava/util/Locale;)I

    .line 259
    return-void
.end method

.method private a(Landroid/view/View;IZ)I
    .locals 5

    .prologue
    .line 1848
    sget-object v0, Landroid/support/v7/widget/aj;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 1850
    :try_start_0
    sget-object v0, Landroid/support/v7/widget/aj;->c:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1857
    :goto_0
    return v0

    .line 1853
    :catch_0
    move-exception v0

    const-string/jumbo v0, "ListPopupWindow"

    const-string/jumbo v1, "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/widget/aj;)Landroid/support/v7/widget/am;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/support/v7/widget/am;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/widget/aj;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/widget/aj;)Landroid/support/v7/widget/au;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v7/widget/aj;->u:Landroid/support/v7/widget/au;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/widget/aj;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v7/widget/aj;->y:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/aj;->q:I

    .line 294
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 411
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Landroid/support/v7/widget/aj;->s:Landroid/view/View;

    .line 448
    return-void
.end method

.method public final a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Landroid/support/v7/widget/aj;->t:Landroid/widget/AdapterView$OnItemClickListener;

    .line 567
    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Landroid/support/v7/widget/aj;->r:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 269
    new-instance v0, Landroid/support/v7/widget/ar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/ar;-><init>(Landroid/support/v7/widget/aj;B)V

    iput-object v0, p0, Landroid/support/v7/widget/aj;->r:Landroid/database/DataSetObserver;

    .line 273
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/support/v7/widget/aj;->f:Landroid/widget/ListAdapter;

    .line 274
    iget-object v0, p0, Landroid/support/v7/widget/aj;->f:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Landroid/support/v7/widget/aj;->r:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 278
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/support/v7/widget/am;

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/support/v7/widget/am;

    iget-object v1, p0, Landroid/support/v7/widget/aj;->f:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/am;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 281
    :cond_2
    return-void

    .line 270
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/aj;->f:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Landroid/support/v7/widget/aj;->f:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/support/v7/widget/aj;->r:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public final a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 713
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 316
    iput-boolean v1, p0, Landroid/support/v7/widget/aj;->A:Z

    .line 317
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 318
    return-void
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 463
    iput p1, p0, Landroid/support/v7/widget/aj;->j:I

    .line 464
    return-void
.end method

.method public c()V
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 609
    .line 3079
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/support/v7/widget/am;

    if-nez v0, :cond_4

    .line 3080
    iget-object v3, p0, Landroid/support/v7/widget/aj;->d:Landroid/content/Context;

    .line 3088
    new-instance v0, Landroid/support/v7/widget/ak;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ak;-><init>(Landroid/support/v7/widget/aj;)V

    .line 3098
    new-instance v4, Landroid/support/v7/widget/am;

    iget-boolean v0, p0, Landroid/support/v7/widget/aj;->A:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-direct {v4, v3, v0}, Landroid/support/v7/widget/am;-><init>(Landroid/content/Context;Z)V

    iput-object v4, p0, Landroid/support/v7/widget/aj;->g:Landroid/support/v7/widget/am;

    .line 3102
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/support/v7/widget/am;

    iget-object v3, p0, Landroid/support/v7/widget/aj;->f:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/am;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3103
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/support/v7/widget/am;

    iget-object v3, p0, Landroid/support/v7/widget/aj;->t:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/am;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3104
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/support/v7/widget/am;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/am;->setFocusable(Z)V

    .line 3105
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/support/v7/widget/am;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/am;->setFocusableInTouchMode(Z)V

    .line 3106
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/support/v7/widget/am;

    new-instance v3, Landroid/support/v7/widget/al;

    invoke-direct {v3, p0}, Landroid/support/v7/widget/al;-><init>(Landroid/support/v7/widget/aj;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/am;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 3122
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/support/v7/widget/am;

    iget-object v3, p0, Landroid/support/v7/widget/aj;->w:Landroid/support/v7/widget/as;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/am;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 3128
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/support/v7/widget/am;

    .line 3179
    iget-object v3, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3194
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3195
    if-eqz v0, :cond_5

    .line 3196
    iget-object v3, p0, Landroid/support/v7/widget/aj;->z:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3197
    iget-object v0, p0, Landroid/support/v7/widget/aj;->z:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/v7/widget/aj;->z:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    .line 3201
    iget-boolean v3, p0, Landroid/support/v7/widget/aj;->m:Z

    if-nez v3, :cond_0

    .line 3202
    iget-object v3, p0, Landroid/support/v7/widget/aj;->z:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    iput v3, p0, Landroid/support/v7/widget/aj;->k:I

    .line 3209
    :cond_0
    :goto_2
    iget-object v3, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    move v3, v1

    .line 3437
    :goto_3
    iget-object v4, p0, Landroid/support/v7/widget/aj;->s:Landroid/view/View;

    .line 3211
    iget v6, p0, Landroid/support/v7/widget/aj;->k:I

    invoke-direct {p0, v4, v6, v3}, Landroid/support/v7/widget/aj;->a(Landroid/view/View;IZ)I

    move-result v4

    .line 3213
    iget v3, p0, Landroid/support/v7/widget/aj;->h:I

    if-ne v3, v5, :cond_7

    .line 3214
    add-int/2addr v0, v4

    .line 611
    :goto_4
    invoke-virtual {p0}, Landroid/support/v7/widget/aj;->l()Z

    move-result v6

    .line 612
    iget-object v3, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    iget v4, p0, Landroid/support/v7/widget/aj;->l:I

    invoke-static {v3, v4}, Landroid/support/v4/widget/O;->a(Landroid/widget/PopupWindow;I)V

    .line 614
    iget-object v3, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 616
    iget v3, p0, Landroid/support/v7/widget/aj;->i:I

    if-ne v3, v5, :cond_8

    move v4, v5

    .line 627
    :goto_5
    iget v3, p0, Landroid/support/v7/widget/aj;->h:I

    if-ne v3, v5, :cond_e

    .line 630
    if-eqz v6, :cond_a

    move v3, v0

    .line 631
    :goto_6
    if-eqz v6, :cond_c

    .line 632
    iget-object v6, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    iget v0, p0, Landroid/support/v7/widget/aj;->i:I

    if-ne v0, v5, :cond_b

    move v0, v5

    :goto_7
    invoke-virtual {v6, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 634
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v6, v3

    .line 646
    :goto_8
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 648
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    .line 5437
    iget-object v1, p0, Landroid/support/v7/widget/aj;->s:Landroid/view/View;

    .line 648
    iget v2, p0, Landroid/support/v7/widget/aj;->j:I

    iget v3, p0, Landroid/support/v7/widget/aj;->k:I

    if-gez v4, :cond_1

    move v4, v5

    :cond_1
    if-gez v6, :cond_10

    :goto_9
    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 693
    :cond_2
    :goto_a
    return-void

    :cond_3
    move v0, v2

    .line 3098
    goto/16 :goto_0

    .line 3181
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    goto/16 :goto_1

    .line 3205
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/aj;->z:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    move v0, v2

    goto :goto_2

    :cond_6
    move v3, v2

    .line 3209
    goto :goto_3

    .line 3218
    :cond_7
    iget v3, p0, Landroid/support/v7/widget/aj;->i:I

    packed-switch v3, :pswitch_data_0

    .line 3232
    iget v3, p0, Landroid/support/v7/widget/aj;->i:I

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 3236
    :goto_b
    iget-object v6, p0, Landroid/support/v7/widget/aj;->g:Landroid/support/v7/widget/am;

    invoke-virtual {v6, v3, v4, v5}, Landroid/support/v7/widget/am;->a(III)I

    move-result v3

    .line 3240
    if-lez v3, :cond_19

    add-int/lit8 v0, v0, 0x0

    .line 3242
    :goto_c
    add-int/2addr v0, v3

    goto :goto_4

    .line 3220
    :pswitch_0
    iget-object v3, p0, Landroid/support/v7/widget/aj;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Landroid/support/v7/widget/aj;->z:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Landroid/support/v7/widget/aj;->z:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    sub-int/2addr v3, v6

    const/high16 v6, -0x80000000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_b

    .line 3226
    :pswitch_1
    iget-object v3, p0, Landroid/support/v7/widget/aj;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Landroid/support/v7/widget/aj;->z:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Landroid/support/v7/widget/aj;->z:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    sub-int/2addr v3, v6

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_b

    .line 620
    :cond_8
    iget v3, p0, Landroid/support/v7/widget/aj;->i:I

    if-ne v3, v8, :cond_9

    .line 4437
    iget-object v3, p0, Landroid/support/v7/widget/aj;->s:Landroid/view/View;

    .line 621
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    move v4, v3

    goto/16 :goto_5

    .line 623
    :cond_9
    iget v3, p0, Landroid/support/v7/widget/aj;->i:I

    move v4, v3

    goto/16 :goto_5

    :cond_a
    move v3, v5

    .line 630
    goto/16 :goto_6

    :cond_b
    move v0, v2

    .line 632
    goto/16 :goto_7

    .line 636
    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    iget v6, p0, Landroid/support/v7/widget/aj;->i:I

    if-ne v6, v5, :cond_d

    move v2, v5

    :cond_d
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 638
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v6, v3

    goto/16 :goto_8

    .line 640
    :cond_e
    iget v2, p0, Landroid/support/v7/widget/aj;->h:I

    if-ne v2, v8, :cond_f

    move v6, v0

    .line 641
    goto/16 :goto_8

    .line 643
    :cond_f
    iget v0, p0, Landroid/support/v7/widget/aj;->h:I

    move v6, v0

    goto/16 :goto_8

    :cond_10
    move v5, v6

    .line 648
    goto/16 :goto_9

    .line 653
    :cond_11
    iget v2, p0, Landroid/support/v7/widget/aj;->i:I

    if-ne v2, v5, :cond_16

    move v2, v5

    .line 664
    :goto_d
    iget v3, p0, Landroid/support/v7/widget/aj;->h:I

    if-ne v3, v5, :cond_18

    move v0, v5

    .line 674
    :cond_12
    :goto_e
    iget-object v3, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 675
    iget-object v2, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 6838
    sget-object v0, Landroid/support/v7/widget/aj;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_13

    .line 6840
    :try_start_0
    sget-object v0, Landroid/support/v7/widget/aj;->a:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    :cond_13
    :goto_f
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 681
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/support/v7/widget/aj;->v:Landroid/support/v7/widget/at;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 682
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    .line 7437
    iget-object v1, p0, Landroid/support/v7/widget/aj;->s:Landroid/view/View;

    .line 682
    iget v2, p0, Landroid/support/v7/widget/aj;->j:I

    iget v3, p0, Landroid/support/v7/widget/aj;->k:I

    iget v4, p0, Landroid/support/v7/widget/aj;->n:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/widget/O;->a(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 684
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/support/v7/widget/am;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/am;->setSelection(I)V

    .line 686
    iget-boolean v0, p0, Landroid/support/v7/widget/aj;->A:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/support/v7/widget/am;

    invoke-virtual {v0}, Landroid/support/v7/widget/am;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 687
    :cond_14
    invoke-virtual {p0}, Landroid/support/v7/widget/aj;->j()V

    .line 689
    :cond_15
    iget-boolean v0, p0, Landroid/support/v7/widget/aj;->A:Z

    if-nez v0, :cond_2

    .line 690
    iget-object v0, p0, Landroid/support/v7/widget/aj;->y:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/widget/aj;->x:Landroid/support/v7/widget/aq;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_a

    .line 656
    :cond_16
    iget v2, p0, Landroid/support/v7/widget/aj;->i:I

    if-ne v2, v8, :cond_17

    .line 6437
    iget-object v2, p0, Landroid/support/v7/widget/aj;->s:Landroid/view/View;

    .line 657
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_d

    .line 659
    :cond_17
    iget v2, p0, Landroid/support/v7/widget/aj;->i:I

    goto :goto_d

    .line 667
    :cond_18
    iget v3, p0, Landroid/support/v7/widget/aj;->h:I

    if-eq v3, v8, :cond_12

    .line 670
    iget v0, p0, Landroid/support/v7/widget/aj;->h:I

    goto :goto_e

    .line 6842
    :catch_0
    move-exception v0

    const-string/jumbo v0, "ListPopupWindow"

    const-string/jumbo v2, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_19
    move v0, v2

    goto/16 :goto_c

    .line 3218
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 482
    iput p1, p0, Landroid/support/v7/widget/aj;->k:I

    .line 483
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/aj;->m:Z

    .line 484
    return-void
.end method

.method public final d()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final d(I)V
    .locals 0

    .prologue
    .line 493
    iput p1, p0, Landroid/support/v7/widget/aj;->n:I

    .line 494
    return-void
.end method

.method public final e()Landroid/view/View;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Landroid/support/v7/widget/aj;->s:Landroid/view/View;

    return-object v0
.end method

.method public final e(I)V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 521
    if-eqz v0, :cond_0

    .line 522
    iget-object v1, p0, Landroid/support/v7/widget/aj;->z:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 523
    iget-object v0, p0, Landroid/support/v7/widget/aj;->z:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/widget/aj;->z:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/aj;->i:I

    .line 527
    :goto_0
    return-void

    .line 2510
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/aj;->i:I

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Landroid/support/v7/widget/aj;->j:I

    return v0
.end method

.method public final f(I)V
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 739
    return-void
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 470
    iget-boolean v0, p0, Landroid/support/v7/widget/aj;->m:Z

    if-nez v0, :cond_0

    .line 471
    const/4 v0, 0x0

    .line 473
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/aj;->k:I

    goto :goto_0
.end method

.method public final g(I)V
    .locals 3

    .prologue
    .line 757
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/support/v7/widget/am;

    .line 7788
    iget-object v1, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    .line 758
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 759
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/am;->a(Landroid/support/v7/widget/am;Z)Z

    .line 760
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/am;->setSelection(I)V

    .line 762
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 763
    invoke-virtual {v0}, Landroid/support/v7/widget/am;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 764
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/am;->setItemChecked(IZ)V

    .line 768
    :cond_0
    return-void
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Landroid/support/v7/widget/aj;->i:I

    return v0
.end method

.method public final i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 699
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 701
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 702
    iput-object v1, p0, Landroid/support/v7/widget/aj;->g:Landroid/support/v7/widget/am;

    .line 703
    iget-object v0, p0, Landroid/support/v7/widget/aj;->y:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/widget/aj;->u:Landroid/support/v7/widget/au;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 704
    return-void
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 775
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/support/v7/widget/am;

    .line 776
    if-eqz v0, :cond_0

    .line 778
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/widget/am;->a(Landroid/support/v7/widget/am;Z)Z

    .line 780
    invoke-virtual {v0}, Landroid/support/v7/widget/am;->requestLayout()V

    .line 782
    :cond_0
    return-void
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 796
    iget-object v0, p0, Landroid/support/v7/widget/aj;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Landroid/support/v7/widget/aj;->g:Landroid/support/v7/widget/am;

    return-object v0
.end method
