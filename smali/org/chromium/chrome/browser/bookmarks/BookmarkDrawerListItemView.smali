.class Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListItemView;
.super Landroid/support/v7/widget/O;
.source "BookmarkDrawerListItemView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/O;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method


# virtual methods
.method setIcon(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    if-nez p1, :cond_0

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListItemView;->setCompoundDrawablePadding(I)V

    .line 31
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->constructTintedDrawable(Landroid/content/res/Resources;I)Lorg/chromium/chrome/browser/widget/TintedDrawable;

    move-result-object v0

    .line 32
    invoke-static {p0, v0, v2, v2, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 34
    return-void

    .line 27
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->bookmark_drawer_drawable_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListItemView;->setCompoundDrawablePadding(I)V

    goto :goto_0
.end method
