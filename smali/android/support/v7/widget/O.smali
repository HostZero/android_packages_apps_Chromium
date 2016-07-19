.class public Landroid/support/v7/widget/O;
.super Landroid/widget/TextView;
.source "AppCompatTextView.java"

# interfaces
.implements Landroid/support/v4/view/W;


# instance fields
.field private mBackgroundTintHelper:Landroid/support/v7/widget/r;

.field private mTextHelper:Landroid/support/v7/widget/M;

.field private mTintManager:Landroid/support/v7/internal/widget/L;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/O;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 57
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/O;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    invoke-virtual {p0}, Landroid/support/v7/widget/O;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/internal/widget/L;->a(Landroid/content/Context;)Landroid/support/v7/internal/widget/L;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/O;->mTintManager:Landroid/support/v7/internal/widget/L;

    .line 64
    new-instance v0, Landroid/support/v7/widget/r;

    iget-object v1, p0, Landroid/support/v7/widget/O;->mTintManager:Landroid/support/v7/internal/widget/L;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/r;-><init>(Landroid/view/View;Landroid/support/v7/internal/widget/L;)V

    iput-object v0, p0, Landroid/support/v7/widget/O;->mBackgroundTintHelper:Landroid/support/v7/widget/r;

    .line 65
    iget-object v0, p0, Landroid/support/v7/widget/O;->mBackgroundTintHelper:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/r;->a(Landroid/util/AttributeSet;I)V

    .line 67
    invoke-static {p0}, Landroid/support/v7/widget/M;->a(Landroid/widget/TextView;)Landroid/support/v7/widget/M;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/O;->mTextHelper:Landroid/support/v7/widget/M;

    .line 68
    iget-object v0, p0, Landroid/support/v7/widget/O;->mTextHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/M;->a(Landroid/util/AttributeSet;I)V

    .line 69
    iget-object v0, p0, Landroid/support/v7/widget/O;->mTextHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->a()V

    .line 70
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 151
    iget-object v0, p0, Landroid/support/v7/widget/O;->mBackgroundTintHelper:Landroid/support/v7/widget/r;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Landroid/support/v7/widget/O;->mBackgroundTintHelper:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->b()V

    .line 154
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/O;->mTextHelper:Landroid/support/v7/widget/M;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Landroid/support/v7/widget/O;->mTextHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->a()V

    .line 157
    :cond_1
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object v0, p0, Landroid/support/v7/widget/O;->mBackgroundTintHelper:Landroid/support/v7/widget/r;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Landroid/support/v7/widget/O;->mBackgroundTintHelper:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->a()V

    .line 86
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 75
    iget-object v0, p0, Landroid/support/v7/widget/O;->mBackgroundTintHelper:Landroid/support/v7/widget/r;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Landroid/support/v7/widget/O;->mBackgroundTintHelper:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/r;->a(I)V

    .line 78
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/v7/widget/O;->mBackgroundTintHelper:Landroid/support/v7/widget/r;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Landroid/support/v7/widget/O;->mBackgroundTintHelper:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/r;->a(Landroid/content/res/ColorStateList;)V

    .line 99
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Landroid/support/v7/widget/O;->mBackgroundTintHelper:Landroid/support/v7/widget/r;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Landroid/support/v7/widget/O;->mBackgroundTintHelper:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/r;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 125
    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 143
    iget-object v0, p0, Landroid/support/v7/widget/O;->mTextHelper:Landroid/support/v7/widget/M;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Landroid/support/v7/widget/O;->mTextHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/M;->a(Landroid/content/Context;I)V

    .line 146
    :cond_0
    return-void
.end method
