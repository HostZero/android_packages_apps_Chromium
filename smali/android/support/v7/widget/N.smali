.class final Landroid/support/v7/widget/N;
.super Landroid/support/v7/widget/M;
.source "AppCompatTextHelperV17.java"


# static fields
.field private static final b:[I


# instance fields
.field private c:Landroid/support/v7/internal/widget/K;

.field private d:Landroid/support/v7/internal/widget/K;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/widget/N;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010392
        0x1010393
    .end array-data
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/support/v7/widget/M;-><init>(Landroid/widget/TextView;)V

    .line 37
    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .prologue
    .line 62
    invoke-super {p0}, Landroid/support/v7/widget/M;->a()V

    .line 64
    iget-object v0, p0, Landroid/support/v7/widget/N;->c:Landroid/support/v7/internal/widget/K;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/N;->d:Landroid/support/v7/internal/widget/K;

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/N;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 66
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/N;->c:Landroid/support/v7/internal/widget/K;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/N;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/internal/widget/K;)V

    .line 67
    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/N;->d:Landroid/support/v7/internal/widget/K;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/N;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/internal/widget/K;)V

    .line 69
    :cond_1
    return-void
.end method

.method final a(Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 40
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/M;->a(Landroid/util/AttributeSet;I)V

    .line 42
    iget-object v0, p0, Landroid/support/v7/widget/N;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 43
    invoke-static {v0}, Landroid/support/v7/internal/widget/L;->a(Landroid/content/Context;)Landroid/support/v7/internal/widget/L;

    move-result-object v1

    .line 46
    sget-object v2, Landroid/support/v7/widget/N;->b:[I

    invoke-virtual {v0, p1, v2, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    new-instance v2, Landroid/support/v7/internal/widget/K;

    invoke-direct {v2}, Landroid/support/v7/internal/widget/K;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/N;->c:Landroid/support/v7/internal/widget/K;

    .line 49
    iget-object v2, p0, Landroid/support/v7/widget/N;->c:Landroid/support/v7/internal/widget/K;

    iput-boolean v5, v2, Landroid/support/v7/internal/widget/K;->d:Z

    .line 50
    iget-object v2, p0, Landroid/support/v7/widget/N;->c:Landroid/support/v7/internal/widget/K;

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/support/v7/internal/widget/L;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/internal/widget/K;->a:Landroid/content/res/ColorStateList;

    .line 52
    :cond_0
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    new-instance v2, Landroid/support/v7/internal/widget/K;

    invoke-direct {v2}, Landroid/support/v7/internal/widget/K;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/N;->d:Landroid/support/v7/internal/widget/K;

    .line 54
    iget-object v2, p0, Landroid/support/v7/widget/N;->d:Landroid/support/v7/internal/widget/K;

    iput-boolean v5, v2, Landroid/support/v7/internal/widget/K;->d:Z

    .line 55
    iget-object v2, p0, Landroid/support/v7/widget/N;->d:Landroid/support/v7/internal/widget/K;

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/support/v7/internal/widget/L;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v2, Landroid/support/v7/internal/widget/K;->a:Landroid/content/res/ColorStateList;

    .line 57
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    return-void
.end method
