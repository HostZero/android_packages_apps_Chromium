.class Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BookmarkFolderSelectActivity.java"


# instance fields
.field private final mBasePadding:I

.field mEntryList:Ljava/util/List;

.field private final mPaddingIncrement:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 269
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListAdapter;->mEntryList:Ljava/util/List;

    .line 270
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->bookmark_folder_item_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListAdapter;->mBasePadding:I

    .line 272
    iget v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListAdapter;->mBasePadding:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListAdapter;->mPaddingIncrement:I

    .line 273
    return-void
.end method

.method private setUpIcons(Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;Landroid/widget/TextView;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 333
    const/4 v0, 0x0

    .line 334
    iget v2, p1, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 335
    sget v0, Lorg/chromium/chrome/R$drawable;->bookmark_folder:I

    .line 341
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->constructTintedDrawable(Landroid/content/res/Resources;I)Lorg/chromium/chrome/browser/widget/TintedDrawable;

    move-result-object v2

    .line 344
    iget-boolean v0, p1, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;->mIsSelected:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lorg/chromium/chrome/R$drawable;->bookmark_check_blue:I

    invoke-static {v0, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 346
    :goto_1
    invoke-static {p2, v2, v1, v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 348
    return-void

    .line 336
    :cond_1
    iget v2, p1, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;->mType:I

    if-nez v2, :cond_0

    .line 338
    sget v0, Lorg/chromium/chrome/R$drawable;->bookmark_add_folder:I

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 344
    goto :goto_1
.end method

.method private setUpPadding(Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;Landroid/widget/TextView;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 354
    iget v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListAdapter;->mBasePadding:I

    iget v1, p1, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;->mDepth:I

    const/4 v2, 0x5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListAdapter;->mPaddingIncrement:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 356
    iget v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListAdapter;->mBasePadding:I

    invoke-static {p2, v0, v3, v1, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 358
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListAdapter;->mEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListAdapter;->getItem(I)Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListAdapter;->mEntryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 287
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListAdapter;->getItem(I)Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;

    move-result-object v0

    .line 301
    iget v0, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;->mType:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 306
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListAdapter;->getItem(I)Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;

    move-result-object v1

    .line 307
    if-eqz p2, :cond_0

    iget v0, v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;->mType:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 320
    :goto_0
    return-object p2

    .line 310
    :cond_0
    if-nez p2, :cond_1

    .line 311
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$layout;->bookmark_folder_select_item:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 314
    :goto_1
    check-cast v0, Landroid/widget/TextView;

    .line 315
    iget-object v2, v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    invoke-direct {p0, v1, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListAdapter;->setUpIcons(Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;Landroid/widget/TextView;)V

    .line 318
    invoke-direct {p0, v1, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListAdapter;->setUpPadding(Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListEntry;Landroid/widget/TextView;)V

    move-object p2, v0

    .line 320
    goto :goto_0

    :cond_1
    move-object v0, p2

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x2

    return v0
.end method

.method setEntryList(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListAdapter;->mEntryList:Ljava/util/List;

    .line 325
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFolderSelectActivity$FolderListAdapter;->notifyDataSetChanged()V

    .line 326
    return-void
.end method
