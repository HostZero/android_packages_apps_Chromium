.class public Landroid/support/v7/widget/SearchView;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "SearchView.java"

# interfaces
.implements Landroid/support/v7/c/c;


# static fields
.field static final a:Landroid/support/v7/widget/bn;

.field private static final b:Z


# instance fields
.field private A:Ljava/lang/Runnable;

.field private final B:Ljava/lang/Runnable;

.field private C:Ljava/lang/Runnable;

.field private final D:Landroid/view/View$OnClickListener;

.field private E:Landroid/view/View$OnKeyListener;

.field private final F:Landroid/widget/TextView$OnEditorActionListener;

.field private final G:Landroid/widget/AdapterView$OnItemClickListener;

.field private final H:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private I:Landroid/text/TextWatcher;

.field private final c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

.field private final d:Landroid/view/View;

.field private final e:Landroid/view/View;

.field private final f:Landroid/view/View;

.field private final g:Landroid/widget/ImageView;

.field private final h:Landroid/widget/ImageView;

.field private final i:Landroid/widget/ImageView;

.field private final j:Landroid/widget/ImageView;

.field private final k:Landroid/view/View;

.field private final l:Landroid/widget/ImageView;

.field private final m:Landroid/graphics/drawable/Drawable;

.field private final n:Landroid/content/Intent;

.field private final o:Landroid/content/Intent;

.field private final p:Ljava/lang/CharSequence;

.field private q:Landroid/support/v7/widget/bo;

.field private r:Z

.field private s:Z

.field private t:Ljava/lang/CharSequence;

.field private u:Z

.field private v:I

.field private w:Ljava/lang/CharSequence;

.field private x:Ljava/lang/CharSequence;

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/SearchView;->b:Z

    .line 167
    new-instance v0, Landroid/support/v7/widget/bn;

    invoke-direct {v0}, Landroid/support/v7/widget/bn;-><init>()V

    sput-object v0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/bn;

    return-void

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 272
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 275
    const v0, 0x7f0100a6

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 276
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/high16 v7, 0x10000000

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 279
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 173
    new-instance v0, Landroid/support/v7/widget/bb;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/bb;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->A:Ljava/lang/Runnable;

    .line 184
    new-instance v0, Landroid/support/v7/widget/bf;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/bf;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->B:Ljava/lang/Runnable;

    .line 190
    new-instance v0, Landroid/support/v7/widget/bg;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/bg;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->C:Ljava/lang/Runnable;

    .line 200
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 946
    new-instance v0, Landroid/support/v7/widget/bk;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/bk;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->D:Landroid/view/View$OnClickListener;

    .line 968
    new-instance v0, Landroid/support/v7/widget/bl;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/bl;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->E:Landroid/view/View$OnKeyListener;

    .line 1131
    new-instance v0, Landroid/support/v7/widget/bm;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/bm;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->F:Landroid/widget/TextView$OnEditorActionListener;

    .line 1315
    new-instance v0, Landroid/support/v7/widget/bc;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/bc;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->G:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1326
    new-instance v0, Landroid/support/v7/widget/bd;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/bd;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1619
    new-instance v0, Landroid/support/v7/widget/be;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/be;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->I:Landroid/text/TextWatcher;

    .line 281
    sget-object v0, Landroid/support/v7/a/a;->aV:[I

    invoke-static {p1, p2, v0, p3, v6}, Landroid/support/v7/internal/widget/N;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/N;

    move-result-object v1

    .line 284
    invoke-virtual {v1}, Landroid/support/v7/internal/widget/N;->b()Landroid/support/v7/internal/widget/L;

    .line 286
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 287
    sget v2, Landroid/support/v7/a/a;->bf:I

    const v3, 0x7f040017

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/internal/widget/N;->g(II)I

    move-result v2

    .line 289
    invoke-virtual {v0, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 291
    const v0, 0x7f0e0092

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    .line 292
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->a(Landroid/support/v7/widget/SearchView;)V

    .line 294
    const v0, 0x7f0e008f

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/view/View;

    .line 295
    const v0, 0x7f0e0091

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->e:Landroid/view/View;

    .line 296
    const v0, 0x7f0e0094

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->f:Landroid/view/View;

    .line 297
    const v0, 0x7f0e008e

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->g:Landroid/widget/ImageView;

    .line 298
    const v0, 0x7f0e0095

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->h:Landroid/widget/ImageView;

    .line 299
    const v0, 0x7f0e0093

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/widget/ImageView;

    .line 300
    const v0, 0x7f0e0096

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->j:Landroid/widget/ImageView;

    .line 301
    const v0, 0x7f0e0090

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->l:Landroid/widget/ImageView;

    .line 304
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->e:Landroid/view/View;

    sget v2, Landroid/support/v7/a/a;->bg:I

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/N;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->f:Landroid/view/View;

    sget v2, Landroid/support/v7/a/a;->bk:I

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/N;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->g:Landroid/widget/ImageView;

    sget v2, Landroid/support/v7/a/a;->bj:I

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/N;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->h:Landroid/widget/ImageView;

    sget v2, Landroid/support/v7/a/a;->bd:I

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/N;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/widget/ImageView;

    sget v2, Landroid/support/v7/a/a;->ba:I

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/N;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 309
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->j:Landroid/widget/ImageView;

    sget v2, Landroid/support/v7/a/a;->bm:I

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/N;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->l:Landroid/widget/ImageView;

    sget v2, Landroid/support/v7/a/a;->bj:I

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/N;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    sget v0, Landroid/support/v7/a/a;->bi:I

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/N;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/graphics/drawable/Drawable;

    .line 315
    sget v0, Landroid/support/v7/a/a;->bl:I

    const v2, 0x7f040016

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/internal/widget/N;->g(II)I

    .line 317
    sget v0, Landroid/support/v7/a/a;->bb:I

    invoke-virtual {v1, v0, v6}, Landroid/support/v7/internal/widget/N;->g(II)I

    .line 319
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->g:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->h:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->j:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->I:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 326
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->F:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 327
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->G:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 328
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 329
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->E:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 332
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    new-instance v2, Landroid/support/v7/widget/bh;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/bh;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 340
    sget v0, Landroid/support/v7/a/a;->be:I

    invoke-virtual {v1, v0, v5}, Landroid/support/v7/internal/widget/N;->a(IZ)Z

    move-result v0

    .line 1650
    iget-boolean v2, p0, Landroid/support/v7/widget/SearchView;->r:Z

    if-eq v2, v0, :cond_0

    .line 1651
    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->r:Z

    .line 1652
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 1653
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->h()V

    .line 342
    :cond_0
    sget v0, Landroid/support/v7/a/a;->aZ:I

    invoke-virtual {v1, v0, v4}, Landroid/support/v7/internal/widget/N;->e(II)I

    move-result v0

    .line 343
    if-eq v0, v4, :cond_1

    .line 1768
    iput v0, p0, Landroid/support/v7/widget/SearchView;->v:I

    .line 1770
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->requestLayout()V

    .line 347
    :cond_1
    sget v0, Landroid/support/v7/a/a;->bc:I

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/N;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Ljava/lang/CharSequence;

    .line 348
    sget v0, Landroid/support/v7/a/a;->bh:I

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/N;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->t:Ljava/lang/CharSequence;

    .line 350
    sget v0, Landroid/support/v7/a/a;->aX:I

    invoke-virtual {v1, v0, v4}, Landroid/support/v7/internal/widget/N;->a(II)I

    move-result v0

    .line 351
    if-eq v0, v4, :cond_2

    .line 352
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->a(I)V

    .line 355
    :cond_2
    sget v0, Landroid/support/v7/a/a;->aY:I

    invoke-virtual {v1, v0, v4}, Landroid/support/v7/internal/widget/N;->a(II)I

    move-result v0

    .line 356
    if-eq v0, v4, :cond_3

    .line 2479
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 361
    :cond_3
    sget v0, Landroid/support/v7/a/a;->aW:I

    invoke-virtual {v1, v0, v5}, Landroid/support/v7/internal/widget/N;->a(IZ)Z

    move-result v0

    .line 362
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setFocusable(Z)V

    .line 364
    invoke-virtual {v1}, Landroid/support/v7/internal/widget/N;->a()V

    .line 367
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->n:Landroid/content/Intent;

    .line 368
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->n:Landroid/content/Intent;

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 369
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->n:Landroid/content/Intent;

    const-string/jumbo v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string/jumbo v2, "web_search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/content/Intent;

    .line 373
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/content/Intent;

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 375
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/view/View;

    .line 376
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 377
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    .line 3390
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/view/View;

    new-instance v1, Landroid/support/v7/widget/bi;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/bi;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 384
    :cond_4
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->r:Z

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 385
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->h()V

    .line 386
    return-void

    .line 3400
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/bj;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/bj;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method private a(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1566
    :try_start_0
    const-string/jumbo v0, "suggest_intent_action"

    invoke-static {p1, v0}, Landroid/support/v7/widget/bq;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1568
    if-nez v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_0

    .line 1569
    const/4 v0, 0x0

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v1

    .line 1571
    :cond_0
    if-nez v1, :cond_1

    .line 1572
    const-string/jumbo v1, "android.intent.action.SEARCH"

    .line 1576
    :cond_1
    const-string/jumbo v0, "suggest_intent_data"

    invoke-static {p1, v0}, Landroid/support/v7/widget/bq;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1577
    sget-boolean v2, Landroid/support/v7/widget/SearchView;->b:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 1578
    const/4 v0, 0x0

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v0

    .line 1581
    :cond_2
    if-eqz v0, :cond_3

    .line 1582
    const-string/jumbo v2, "suggest_intent_data_id"

    invoke-static {p1, v2}, Landroid/support/v7/widget/bq;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1583
    if-eqz v2, :cond_3

    .line 1584
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1587
    :cond_3
    if-nez v0, :cond_4

    move-object v2, v7

    .line 1589
    :goto_0
    const-string/jumbo v0, "suggest_intent_query"

    invoke-static {p1, v0}, Landroid/support/v7/widget/bq;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1590
    const-string/jumbo v0, "suggest_intent_extra_data"

    invoke-static {p1, v0}, Landroid/support/v7/widget/bq;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v5, p2

    move-object v6, p3

    .line 1592
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/SearchView;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1602
    :goto_1
    return-object v0

    .line 1587
    :cond_4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1593
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1596
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 1600
    :goto_2
    const-string/jumbo v2, "SearchView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Search suggestions cursor at row "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " returned exception."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v7

    .line 1602
    goto :goto_1

    .line 1598
    :catch_1
    move-exception v0

    const/4 v0, -0x1

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1442
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1443
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1447
    if-eqz p2, :cond_0

    .line 1448
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1450
    :cond_0
    const-string/jumbo v1, "user_query"

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->x:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1451
    if-eqz p4, :cond_1

    .line 1452
    const-string/jumbo v1, "query"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1454
    :cond_1
    if-eqz p3, :cond_2

    .line 1455
    const-string/jumbo v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1460
    :cond_2
    if-eqz p5, :cond_3

    .line 1461
    const-string/jumbo v1, "action_key"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1462
    const-string/jumbo v1, "action_msg"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1464
    :cond_3
    sget-boolean v1, Landroid/support/v7/widget/SearchView;->b:Z

    if-eqz v1, :cond_4

    .line 1465
    const/4 v1, 0x0

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1467
    :cond_4
    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 1399
    if-nez p1, :cond_0

    .line 1409
    :goto_0
    return-void

    .line 1405
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1406
    :catch_0
    move-exception v0

    .line 1407
    const-string/jumbo v1, "SearchView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed launch activity: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/widget/SearchView;)V
    .locals 2

    .prologue
    .line 104
    .line 7904
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    .line 7905
    if-eqz v0, :cond_2

    sget-object v0, Landroid/support/v7/widget/SearchView;->FOCUSED_STATE_SET:[I

    .line 7906
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 7907
    if-eqz v1, :cond_0

    .line 7908
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 7910
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 7911
    if-eqz v1, :cond_1

    .line 7912
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 7914
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->invalidate()V

    .line 104
    return-void

    .line 7905
    :cond_2
    sget-object v0, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 104
    const/4 v5, 0x0

    .line 11421
    const-string/jumbo v1, "android.intent.action.SEARCH"

    move-object v0, p0

    move-object v3, v2

    move-object v4, p3

    move-object v6, v2

    .line 11422
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/SearchView;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 11423
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/SearchView;Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 104
    .line 14143
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 14144
    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->x:Ljava/lang/CharSequence;

    .line 14145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 14146
    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->b(Z)V

    .line 14147
    if-nez v0, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->e(Z)V

    .line 14148
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->f()V

    .line 14149
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->e()V

    .line 14150
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/bo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->w:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14151
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/bo;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/v7/widget/bo;->onQueryTextChange(Ljava/lang/String;)Z

    .line 14153
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->w:Ljava/lang/CharSequence;

    .line 104
    return-void

    :cond_1
    move v0, v2

    .line 14145
    goto :goto_0

    :cond_2
    move v1, v2

    .line 14147
    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v7/widget/SearchView;Z)V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->d(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 823
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->s:Z

    .line 825
    if-eqz p1, :cond_1

    move v0, v1

    .line 827
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    .line 829
    :goto_1
    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->g:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 830
    invoke-direct {p0, v3}, Landroid/support/v7/widget/SearchView;->b(Z)V

    .line 831
    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/view/View;

    if-eqz p1, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 834
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->r:Z

    if-eqz v0, :cond_4

    .line 839
    :cond_0
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 841
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->f()V

    .line 842
    if-nez v3, :cond_5

    :goto_4
    invoke-direct {p0, v4}, Landroid/support/v7/widget/SearchView;->e(Z)V

    .line 843
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->e()V

    .line 844
    return-void

    :cond_1
    move v0, v2

    .line 825
    goto :goto_0

    :cond_2
    move v3, v1

    .line 827
    goto :goto_1

    :cond_3
    move v0, v1

    .line 831
    goto :goto_2

    :cond_4
    move v2, v1

    .line 837
    goto :goto_3

    :cond_5
    move v4, v1

    .line 842
    goto :goto_4
.end method

.method static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 1612
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/widget/SearchView;I)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 104
    .line 13349
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 13350
    invoke-virtual {v3}, Landroid/support/v4/widget/k;->a()Landroid/database/Cursor;

    move-result-object v1

    .line 13351
    if-eqz v1, :cond_0

    .line 13354
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13356
    invoke-virtual {v3, v1}, Landroid/support/v4/widget/k;->b(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 13357
    if-eqz v1, :cond_1

    .line 13360
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->b(Ljava/lang/CharSequence;)V

    .line 13310
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 104
    return v0

    .line 13363
    :cond_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->b(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 13367
    :cond_2
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->b(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/widget/SearchView;IILjava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 104
    .line 12382
    invoke-virtual {v3}, Landroid/support/v4/widget/k;->a()Landroid/database/Cursor;

    move-result-object v0

    .line 12383
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12385
    invoke-direct {p0, v0, v2, v3}, Landroid/support/v7/widget/SearchView;->a(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 12388
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Landroid/content/Intent;)V

    .line 12299
    :cond_0
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->d(Z)V

    .line 13171
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    .line 12301
    const/4 v0, 0x1

    .line 104
    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/SearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 104
    .line 11013
    const/4 v0, 0x0

    .line 104
    return v0
.end method

.method static synthetic b(Landroid/support/v7/widget/SearchView;)Landroid/support/v4/widget/k;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method private b(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 1415
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1417
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1418
    return-void

    .line 1417
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 874
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->h:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 875
    return-void
.end method

.method static synthetic c(Landroid/support/v7/widget/SearchView;)Landroid/view/View$OnFocusChangeListener;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method private d()I
    .locals 2

    .prologue
    .line 818
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method static synthetic d(Landroid/support/v7/widget/SearchView;)V
    .locals 6

    .prologue
    .line 104
    .line 8272
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 8273
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 8274
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 8275
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 8276
    invoke-static {p0}, Landroid/support/v7/internal/widget/R;->a(Landroid/view/View;)Z

    move-result v1

    .line 8277
    iget-boolean v4, p0, Landroid/support/v7/widget/SearchView;->r:Z

    if-eqz v4, :cond_1

    const v4, 0x7f0d00e0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f0d00de

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v4

    .line 8281
    :goto_0
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 8283
    if-eqz v1, :cond_2

    .line 8284
    iget v1, v3, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    .line 8288
    :goto_1
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    .line 8289
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v4

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 8291
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setDropDownWidth(I)V

    .line 104
    :cond_0
    return-void

    .line 8277
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 8286
    :cond_2
    iget v1, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    sub-int v1, v2, v1

    goto :goto_1
.end method

.method private d(Z)V
    .locals 3

    .prologue
    .line 925
    if-eqz p1, :cond_1

    .line 926
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->A:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 936
    :cond_0
    :goto_0
    return-void

    .line 928
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->A:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 929
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 932
    if-eqz v0, :cond_0

    .line 933
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method static synthetic e(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 878
    const/16 v0, 0x8

    .line 884
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 885
    return-void
.end method

.method private e(Z)V
    .locals 2

    .prologue
    .line 1128
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->j:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1129
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 888
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    .line 891
    :goto_0
    if-nez v2, :cond_0

    iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->r:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->y:Z

    if-nez v3, :cond_3

    .line 892
    :cond_0
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 893
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 894
    if-eqz v1, :cond_1

    .line 895
    if-eqz v2, :cond_5

    sget-object v0, Landroid/support/v7/widget/SearchView;->ENABLED_STATE_SET:[I

    :goto_3
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 897
    :cond_1
    return-void

    :cond_2
    move v2, v1

    .line 888
    goto :goto_0

    :cond_3
    move v0, v1

    .line 891
    goto :goto_1

    .line 892
    :cond_4
    const/16 v1, 0x8

    goto :goto_2

    .line 895
    :cond_5
    sget-object v0, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method static synthetic f(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->i()V

    return-void
.end method

.method static synthetic g(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->B:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 901
    return-void
.end method

.method private h()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1071
    .line 5629
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->t:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 5630
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->t:Ljava/lang/CharSequence;

    .line 1072
    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 6057
    :cond_0
    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->r:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    .line 1072
    :cond_1
    :goto_1
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    .line 1073
    return-void

    .line 5634
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Ljava/lang/CharSequence;

    goto :goto_0

    .line 6061
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getTextSize()F

    move-result v1

    float-to-double v4, v1

    const-wide/high16 v6, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v4, v6

    double-to-int v1, v4

    .line 6062
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v8, v8, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6064
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v3, "   "

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 6065
    new-instance v3, Landroid/text/style/ImageSpan;

    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v6, 0x21

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 6066
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v0, v1

    .line 6067
    goto :goto_1
.end method

.method static synthetic h(Landroid/support/v7/widget/SearchView;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 104
    .line 9175
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 9176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9177
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->r:Z

    if-eqz v0, :cond_0

    .line 9181
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 9183
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->a(Z)V

    :cond_0
    :goto_0
    return-void

    .line 9187
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 9188
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 9189
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->d(Z)V

    goto :goto_0
.end method

.method static synthetic i(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 1195
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 1196
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1197
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->d(Z)V

    .line 1201
    return-void
.end method

.method static synthetic j(Landroid/support/v7/widget/SearchView;)V
    .locals 2

    .prologue
    .line 104
    .line 10157
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 10158
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_1

    .line 10159
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/bo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/bo;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/support/v7/widget/bo;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10164
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->d(Z)V

    .line 10171
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    .line 104
    :cond_1
    return-void
.end method

.method static synthetic k(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 1607
    sget-object v0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/bn;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bn;->a(Landroid/widget/AutoCompleteTextView;)V

    .line 1608
    sget-object v0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/bn;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bn;->b(Landroid/widget/AutoCompleteTextView;)V

    .line 1609
    return-void
.end method

.method static synthetic l(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method static synthetic m(Landroid/support/v7/widget/SearchView;)Landroid/support/v7/widget/SearchView$SearchAutoComplete;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    return-object v0
.end method

.method static synthetic n(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->l()V

    return-void
.end method

.method static synthetic o(Landroid/support/v7/widget/SearchView;)Landroid/app/SearchableInfo;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 1261
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->y:Z

    if-eqz v0, :cond_0

    .line 1268
    :goto_0
    return-void

    .line 1263
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->y:Z

    .line 1264
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SearchView;->z:I

    .line 1265
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/support/v7/widget/SearchView;->z:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1266
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 7678
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->i()V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 461
    return-void
.end method

.method public final a(Landroid/support/v7/widget/bo;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/bo;

    .line 527
    return-void
.end method

.method final a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 943
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->b(Ljava/lang/CharSequence;)V

    .line 944
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;Z)V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 588
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 589
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->x:Ljava/lang/CharSequence;

    .line 596
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1249
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0, v2}, Landroid/support/v7/widget/SearchView;->a(Ljava/lang/CharSequence;Z)V

    .line 1250
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 1251
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 1252
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/support/v7/widget/SearchView;->z:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1253
    iput-boolean v2, p0, Landroid/support/v7/widget/SearchView;->y:Z

    .line 1254
    return-void
.end method

.method final c()V
    .locals 1

    .prologue
    .line 1228
    .line 6689
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->s:Z

    .line 1228
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 1231
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->g()V

    .line 1232
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1233
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->l()V

    .line 1235
    :cond_0
    return-void
.end method

.method public clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 512
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->u:Z

    .line 513
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->d(Z)V

    .line 514
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->clearFocus()V

    .line 515
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->clearFocus()V

    .line 516
    iput-boolean v1, p0, Landroid/support/v7/widget/SearchView;->u:Z

    .line 517
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->B:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 920
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->C:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 921
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 922
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 785
    .line 4689
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->s:Z

    .line 785
    if-eqz v0, :cond_0

    .line 786
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 815
    :goto_0
    return-void

    .line 790
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 791
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 793
    sparse-switch v1, :sswitch_data_0

    .line 814
    :cond_1
    :goto_1
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    goto :goto_0

    .line 796
    :sswitch_0
    iget v1, p0, Landroid/support/v7/widget/SearchView;->v:I

    if-lez v1, :cond_2

    .line 797
    iget v1, p0, Landroid/support/v7/widget/SearchView;->v:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 799
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->d()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 804
    :sswitch_1
    iget v1, p0, Landroid/support/v7/widget/SearchView;->v:I

    if-lez v1, :cond_1

    .line 805
    iget v1, p0, Landroid/support/v7/widget/SearchView;->v:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 810
    :sswitch_2
    iget v0, p0, Landroid/support/v7/widget/SearchView;->v:I

    if-lez v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/SearchView;->v:I

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->d()I

    move-result v0

    goto :goto_1

    .line 793
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 1239
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->onWindowFocusChanged(Z)V

    .line 1241
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->g()V

    .line 1242
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 494
    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->u:Z

    if-eqz v1, :cond_1

    .line 505
    :cond_0
    :goto_0
    return v0

    .line 496
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3689
    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->s:Z

    .line 498
    if-nez v1, :cond_3

    .line 499
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 500
    if-eqz v1, :cond_2

    .line 501
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    :cond_2
    move v0, v1

    .line 503
    goto :goto_0

    .line 505
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method
