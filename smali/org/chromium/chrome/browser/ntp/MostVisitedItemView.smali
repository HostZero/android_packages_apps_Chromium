.class public Lorg/chromium/chrome/browser/ntp/MostVisitedItemView;
.super Landroid/widget/FrameLayout;
.source "MostVisitedItemView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method


# virtual methods
.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 41
    sget v0, Lorg/chromium/chrome/R$id;->most_visited_icon:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/MostVisitedItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 42
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    return-void
.end method

.method public setOfflineAvailable(Z)V
    .locals 2

    .prologue
    .line 49
    sget v0, Lorg/chromium/chrome/R$id;->offline_badge:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/MostVisitedItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 51
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    sget v0, Lorg/chromium/chrome/R$id;->most_visited_title:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/MostVisitedItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    return-void
.end method
