.class public final Landroid/support/v7/widget/A;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "AppCompatMultiAutoCompleteTextView.java"

# interfaces
.implements Landroid/support/v4/view/W;


# static fields
.field private static final a:[I


# instance fields
.field private b:Landroid/support/v7/internal/widget/L;

.field private c:Landroid/support/v7/widget/r;

.field private d:Landroid/support/v7/widget/M;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010176

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/A;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 64
    const v0, 0x7f0100c5

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/A;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-static {p1}, Landroid/support/v7/internal/widget/I;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    invoke-virtual {p0}, Landroid/support/v7/widget/A;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/A;->a:[I

    invoke-static {v0, p2, v1, p3, v2}, Landroid/support/v7/internal/widget/N;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/N;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/N;->b()Landroid/support/v7/internal/widget/L;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/A;->b:Landroid/support/v7/internal/widget/L;

    .line 73
    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/N;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/N;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/A;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/N;->a()V

    .line 78
    new-instance v0, Landroid/support/v7/widget/r;

    iget-object v1, p0, Landroid/support/v7/widget/A;->b:Landroid/support/v7/internal/widget/L;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/r;-><init>(Landroid/view/View;Landroid/support/v7/internal/widget/L;)V

    iput-object v0, p0, Landroid/support/v7/widget/A;->c:Landroid/support/v7/widget/r;

    .line 79
    iget-object v0, p0, Landroid/support/v7/widget/A;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/r;->a(Landroid/util/AttributeSet;I)V

    .line 81
    invoke-static {p0}, Landroid/support/v7/widget/M;->a(Landroid/widget/TextView;)Landroid/support/v7/widget/M;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/A;->d:Landroid/support/v7/widget/M;

    .line 82
    iget-object v0, p0, Landroid/support/v7/widget/A;->d:Landroid/support/v7/widget/M;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/M;->a(Landroid/util/AttributeSet;I)V

    .line 83
    iget-object v0, p0, Landroid/support/v7/widget/A;->d:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->a()V

    .line 84
    return-void
.end method


# virtual methods
.method protected final drawableStateChanged()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->drawableStateChanged()V

    .line 166
    iget-object v0, p0, Landroid/support/v7/widget/A;->c:Landroid/support/v7/widget/r;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Landroid/support/v7/widget/A;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->b()V

    .line 169
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/A;->d:Landroid/support/v7/widget/M;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Landroid/support/v7/widget/A;->d:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->a()V

    .line 172
    :cond_1
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-object v0, p0, Landroid/support/v7/widget/A;->c:Landroid/support/v7/widget/r;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Landroid/support/v7/widget/A;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->a()V

    .line 109
    :cond_0
    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setBackgroundResource(I)V

    .line 98
    iget-object v0, p0, Landroid/support/v7/widget/A;->c:Landroid/support/v7/widget/r;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Landroid/support/v7/widget/A;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/r;->a(I)V

    .line 101
    :cond_0
    return-void
.end method

.method public final setDropDownBackgroundResource(I)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/v7/widget/A;->b:Landroid/support/v7/internal/widget/L;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Landroid/support/v7/widget/A;->b:Landroid/support/v7/internal/widget/L;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/L;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/A;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setDropDownBackgroundResource(I)V

    goto :goto_0
.end method

.method public final setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Landroid/support/v7/widget/A;->c:Landroid/support/v7/widget/r;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Landroid/support/v7/widget/A;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/r;->a(Landroid/content/res/ColorStateList;)V

    .line 122
    :cond_0
    return-void
.end method

.method public final setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Landroid/support/v7/widget/A;->c:Landroid/support/v7/widget/r;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Landroid/support/v7/widget/A;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/r;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 148
    :cond_0
    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 177
    iget-object v0, p0, Landroid/support/v7/widget/A;->d:Landroid/support/v7/widget/M;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Landroid/support/v7/widget/A;->d:Landroid/support/v7/widget/M;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/M;->a(Landroid/content/Context;I)V

    .line 180
    :cond_0
    return-void
.end method
