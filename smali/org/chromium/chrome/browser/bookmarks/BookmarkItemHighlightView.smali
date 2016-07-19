.class public Lorg/chromium/chrome/browser/bookmarks/BookmarkItemHighlightView;
.super Landroid/view/View;
.source "BookmarkItemHighlightView.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field public static final ANIMATION_DURATION_MS:I = 0x96

.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mIsChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemHighlightView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-array v0, v5, [I

    const v1, 0x101030e

    aput v1, v0, v4

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$drawable;->bookmark_item_highlight:I

    invoke-static {v1, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 34
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-direct {v2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 35
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemHighlightView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 36
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemHighlightView;->mIsChecked:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 57
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 58
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemHighlightView;->mIsChecked:Z

    if-eqz v1, :cond_0

    .line 59
    sget-object v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemHighlightView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemHighlightView;->mergeDrawableStates([I[I)[I

    .line 61
    :cond_0
    return-object v0
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemHighlightView;->mIsChecked:Z

    if-ne p1, v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemHighlightView;->mIsChecked:Z

    .line 52
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemHighlightView;->refreshDrawableState()V

    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemHighlightView;->mIsChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemHighlightView;->setChecked(Z)V

    .line 46
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
