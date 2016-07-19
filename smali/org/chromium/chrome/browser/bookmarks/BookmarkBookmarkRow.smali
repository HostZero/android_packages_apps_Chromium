.class public Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;
.super Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;
.source "BookmarkBookmarkRow.java"

# interfaces
.implements Lorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mCornerRadius:I

.field private final mDisplayedIconSize:I

.field private mIconGenerator:Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;

.field private final mMinIconSize:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->bookmark_item_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->mCornerRadius:I

    .line 44
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->bookmark_item_min_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->mMinIconSize:I

    .line 45
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->bookmark_item_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->mDisplayedIconSize:I

    .line 46
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->bookmark_item_icon_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 47
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->bookmark_icon_background_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v4

    .line 49
    new-instance v0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;

    iget v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->mDisplayedIconSize:I

    iget v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->mDisplayedIconSize:I

    iget v3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->mCornerRadius:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;-><init>(IIIIF)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->mIconGenerator:Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;

    .line 51
    return-void
.end method

.method private updateOfflinePageSize(Lorg/chromium/components/bookmarks/BookmarkId;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 91
    const/4 v0, 0x0

    .line 92
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getOfflinePageBridge()Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object v1

    .line 93
    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getCurrentState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_1

    .line 94
    invoke-static {p1}, Lorg/chromium/chrome/browser/offlinepages/ClientId;->createClientIdForBookmarkId(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/offlinepages/ClientId;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->getPageByClientId(Lorg/chromium/chrome/browser/offlinepages/ClientId;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;

    move-result-object v0

    move-object v1, v0

    .line 97
    :goto_0
    sget v0, Lorg/chromium/chrome/R$id;->offline_page_size:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 98
    sget v2, Lorg/chromium/chrome/R$id;->bookmark_row:I

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 99
    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lorg/chromium/chrome/R$dimen;->offline_page_item_vertical_spacing:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 102
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageItem;->getFileSize()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    div-int/lit8 v1, v3, 0x2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v5, v1, v5, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 106
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    :goto_1
    return-void

    .line 108
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic isChecked()Z
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->isChecked()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onAllBookmarksStateSet()V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->onAllBookmarksStateSet()V

    return-void
.end method

.method public bridge synthetic onBookmarkDelegateInitialized(Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->onBookmarkDelegateInitialized(Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;)V

    return-void
.end method

.method public onClick()V
    .locals 3

    .prologue
    .line 57
    const/4 v0, -0x1

    .line 58
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getCurrentState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 73
    sget-boolean v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "State not valid"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 60
    :pswitch_0
    const/4 v0, 0x0

    .line 76
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-interface {v1, v2, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->openBookmark(Lorg/chromium/components/bookmarks/BookmarkId;I)V

    .line 77
    return-void

    .line 63
    :pswitch_1
    const/4 v0, 0x2

    .line 64
    goto :goto_0

    .line 66
    :pswitch_2
    const/4 v0, 0x3

    .line 67
    goto :goto_0

    .line 70
    :pswitch_3
    sget-boolean v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "The main content shouldn\'t be inflated if it\'s still loading"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onDestroy()V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->onDestroy()V

    return-void
.end method

.method public bridge synthetic onFilterStateSet(Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->onFilterStateSet(Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;)V

    return-void
.end method

.method public bridge synthetic onFolderStateSet(Lorg/chromium/components/bookmarks/BookmarkId;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->onFolderStateSet(Lorg/chromium/components/bookmarks/BookmarkId;)V

    return-void
.end method

.method public onLargeIconAvailable(Landroid/graphics/Bitmap;I)V
    .locals 4

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->mIconGenerator:Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;

    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->setBackgroundColor(I)V

    .line 120
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->mIconGenerator:Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->generateIconForUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->mIconImageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->mDisplayedIconSize:I

    iget v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->mDisplayedIconSize:I

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/b/a/b;->a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/b/a/p;

    move-result-object v0

    .line 126
    iget v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->mCornerRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/b/a/p;->a(F)V

    .line 127
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->mIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public bridge synthetic onLongClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 30
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->onLongClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onSelectionStateChange(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->onSelectionStateChange(Ljava/util/List;)V

    return-void
.end method

.method setBookmarkId(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;
    .locals 4

    .prologue
    .line 81
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->setBookmarkId(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->mUrl:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->mIconImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getLargeIconBridge()Lorg/chromium/chrome/browser/favicon/LargeIconBridge;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->mUrl:Ljava/lang/String;

    iget v3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->mMinIconSize:I

    invoke-virtual {v1, v2, v3, p0}, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;->getLargeIconForUrl(Ljava/lang/String;ILorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;)Z

    .line 86
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBookmarkRow;->updateOfflinePageSize(Lorg/chromium/components/bookmarks/BookmarkId;)V

    .line 87
    return-object v0
.end method

.method public bridge synthetic setChecked(Z)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->setChecked(Z)V

    return-void
.end method

.method public bridge synthetic toggle()V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->toggle()V

    return-void
.end method
