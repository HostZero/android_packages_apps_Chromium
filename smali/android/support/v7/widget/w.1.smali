.class public Landroid/support/v7/widget/w;
.super Landroid/widget/EditText;
.source "AppCompatEditText.java"

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
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f0100ca

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 62
    invoke-static {p1}, Landroid/support/v7/internal/widget/I;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    invoke-virtual {p0}, Landroid/support/v7/widget/w;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/internal/widget/L;->a(Landroid/content/Context;)Landroid/support/v7/internal/widget/L;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/w;->mTintManager:Landroid/support/v7/internal/widget/L;

    .line 65
    new-instance v0, Landroid/support/v7/widget/r;

    iget-object v1, p0, Landroid/support/v7/widget/w;->mTintManager:Landroid/support/v7/internal/widget/L;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/r;-><init>(Landroid/view/View;Landroid/support/v7/internal/widget/L;)V

    iput-object v0, p0, Landroid/support/v7/widget/w;->mBackgroundTintHelper:Landroid/support/v7/widget/r;

    .line 66
    iget-object v0, p0, Landroid/support/v7/widget/w;->mBackgroundTintHelper:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/r;->a(Landroid/util/AttributeSet;I)V

    .line 68
    invoke-static {p0}, Landroid/support/v7/widget/M;->a(Landroid/widget/TextView;)Landroid/support/v7/widget/M;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/w;->mTextHelper:Landroid/support/v7/widget/M;

    .line 69
    iget-object v0, p0, Landroid/support/v7/widget/w;->mTextHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/M;->a(Landroid/util/AttributeSet;I)V

    .line 70
    iget-object v0, p0, Landroid/support/v7/widget/w;->mTextHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->a()V

    .line 71
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    .line 144
    iget-object v0, p0, Landroid/support/v7/widget/w;->mBackgroundTintHelper:Landroid/support/v7/widget/r;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Landroid/support/v7/widget/w;->mBackgroundTintHelper:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->b()V

    .line 147
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/w;->mTextHelper:Landroid/support/v7/widget/M;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Landroid/support/v7/widget/w;->mTextHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->a()V

    .line 150
    :cond_1
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object v0, p0, Landroid/support/v7/widget/w;->mBackgroundTintHelper:Landroid/support/v7/widget/r;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Landroid/support/v7/widget/w;->mBackgroundTintHelper:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->a()V

    .line 87
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 76
    iget-object v0, p0, Landroid/support/v7/widget/w;->mBackgroundTintHelper:Landroid/support/v7/widget/r;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Landroid/support/v7/widget/w;->mBackgroundTintHelper:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/r;->a(I)V

    .line 79
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/v7/widget/w;->mBackgroundTintHelper:Landroid/support/v7/widget/r;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Landroid/support/v7/widget/w;->mBackgroundTintHelper:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/r;->a(Landroid/content/res/ColorStateList;)V

    .line 100
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Landroid/support/v7/widget/w;->mBackgroundTintHelper:Landroid/support/v7/widget/r;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Landroid/support/v7/widget/w;->mBackgroundTintHelper:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/r;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 126
    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 155
    iget-object v0, p0, Landroid/support/v7/widget/w;->mTextHelper:Landroid/support/v7/widget/M;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Landroid/support/v7/widget/w;->mTextHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/M;->a(Landroid/content/Context;I)V

    .line 158
    :cond_0
    return-void
.end method
