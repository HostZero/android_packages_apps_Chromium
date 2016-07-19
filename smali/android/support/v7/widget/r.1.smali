.class final Landroid/support/v7/widget/r;
.super Ljava/lang/Object;
.source "AppCompatBackgroundHelper.java"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/support/v7/internal/widget/L;

.field private c:Landroid/support/v7/internal/widget/K;

.field private d:Landroid/support/v7/internal/widget/K;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/support/v7/internal/widget/L;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/support/v7/widget/r;->a:Landroid/view/View;

    .line 41
    iput-object p2, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/internal/widget/L;

    .line 42
    return-void
.end method

.method private b(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 121
    if-eqz p1, :cond_1

    .line 122
    iget-object v0, p0, Landroid/support/v7/widget/r;->c:Landroid/support/v7/internal/widget/K;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Landroid/support/v7/internal/widget/K;

    invoke-direct {v0}, Landroid/support/v7/internal/widget/K;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/r;->c:Landroid/support/v7/internal/widget/K;

    .line 125
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/r;->c:Landroid/support/v7/internal/widget/K;

    iput-object p1, v0, Landroid/support/v7/internal/widget/K;->a:Landroid/content/res/ColorStateList;

    .line 126
    iget-object v0, p0, Landroid/support/v7/widget/r;->c:Landroid/support/v7/internal/widget/K;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/internal/widget/K;->d:Z

    .line 130
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/r;->b()V

    .line 131
    return-void

    .line 128
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/r;->c:Landroid/support/v7/internal/widget/K;

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/r;->b(Landroid/content/res/ColorStateList;)V

    .line 78
    return-void
.end method

.method final a(I)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/internal/widget/L;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/internal/widget/L;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/L;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/r;->b(Landroid/content/res/ColorStateList;)V

    .line 73
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Landroid/support/v7/widget/r;->d:Landroid/support/v7/internal/widget/K;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Landroid/support/v7/internal/widget/K;

    invoke-direct {v0}, Landroid/support/v7/internal/widget/K;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/r;->d:Landroid/support/v7/internal/widget/K;

    .line 84
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/r;->d:Landroid/support/v7/internal/widget/K;

    iput-object p1, v0, Landroid/support/v7/internal/widget/K;->a:Landroid/content/res/ColorStateList;

    .line 85
    iget-object v0, p0, Landroid/support/v7/widget/r;->d:Landroid/support/v7/internal/widget/K;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/internal/widget/K;->d:Z

    .line 87
    invoke-virtual {p0}, Landroid/support/v7/widget/r;->b()V

    .line 88
    return-void
.end method

.method final a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Landroid/support/v7/widget/r;->d:Landroid/support/v7/internal/widget/K;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Landroid/support/v7/internal/widget/K;

    invoke-direct {v0}, Landroid/support/v7/internal/widget/K;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/r;->d:Landroid/support/v7/internal/widget/K;

    .line 98
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/r;->d:Landroid/support/v7/internal/widget/K;

    iput-object p1, v0, Landroid/support/v7/internal/widget/K;->b:Landroid/graphics/PorterDuff$Mode;

    .line 99
    iget-object v0, p0, Landroid/support/v7/widget/r;->d:Landroid/support/v7/internal/widget/K;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/internal/widget/K;->c:Z

    .line 101
    invoke-virtual {p0}, Landroid/support/v7/widget/r;->b()V

    .line 102
    return-void
.end method

.method final a(Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Landroid/support/v7/widget/r;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/a/a;->cz:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 48
    :try_start_0
    sget v0, Landroid/support/v7/a/a;->cA:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/internal/widget/L;

    sget v2, Landroid/support/v7/a/a;->cA:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/L;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0, v0}, Landroid/support/v7/widget/r;->b(Landroid/content/res/ColorStateList;)V

    .line 55
    :cond_0
    sget v0, Landroid/support/v7/a/a;->cB:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Landroid/support/v7/widget/r;->a:Landroid/view/View;

    sget v2, Landroid/support/v7/a/a;->cB:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 59
    :cond_1
    sget v0, Landroid/support/v7/a/a;->cC:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Landroid/support/v7/widget/r;->a:Landroid/view/View;

    sget v2, Landroid/support/v7/a/a;->cC:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/customtabs/a;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    return-void

    .line 66
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method final b()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Landroid/support/v7/widget/r;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Landroid/support/v7/widget/r;->d:Landroid/support/v7/internal/widget/K;

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Landroid/support/v7/widget/r;->d:Landroid/support/v7/internal/widget/K;

    iget-object v2, p0, Landroid/support/v7/widget/r;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/support/v7/internal/widget/L;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/internal/widget/K;[I)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/r;->c:Landroid/support/v7/internal/widget/K;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Landroid/support/v7/widget/r;->c:Landroid/support/v7/internal/widget/K;

    iget-object v2, p0, Landroid/support/v7/widget/r;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/support/v7/internal/widget/L;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/internal/widget/K;[I)V

    goto :goto_0
.end method
