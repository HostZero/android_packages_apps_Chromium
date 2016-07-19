.class abstract Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;
.super Landroid/widget/FrameLayout;
.source "BookmarkRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/Checkable;
.implements Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

.field protected mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

.field private mHighlightView:Lorg/chromium/chrome/browser/bookmarks/BookmarkItemHighlightView;

.field protected mIconImageView:Landroid/widget/ImageView;

.field private mIsAttachedToWindow:Z

.field protected mMoreIcon:Lorg/chromium/chrome/browser/widget/TintedImageButton;

.field private mPopupMenu:Landroid/widget/ListPopupWindow;

.field protected mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mIsAttachedToWindow:Z

    .line 50
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;)Landroid/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mPopupMenu:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->showMenu(Landroid/view/View;)V

    return-void
.end method

.method private cleanup()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->clearPopup()V

    .line 89
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->removeUIObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;)V

    .line 90
    :cond_0
    return-void
.end method

.method private clearPopup()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mPopupMenu:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mPopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mPopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 83
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mPopupMenu:Landroid/widget/ListPopupWindow;

    .line 85
    :cond_1
    return-void
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->addUIObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;)V

    .line 77
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->updateSelectionState()V

    .line 78
    return-void
.end method

.method private showMenu(Landroid/view/View;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 108
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mPopupMenu:Landroid/widget/ListPopupWindow;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$style;->BookmarkMenuStyle:I

    invoke-direct {v0, v1, v9, v7, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mPopupMenu:Landroid/widget/ListPopupWindow;

    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mPopupMenu:Landroid/widget/ListPopupWindow;

    new-instance v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow$1;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$layout;->bookmark_popup_item:I

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lorg/chromium/chrome/R$string;->bookmark_item_select:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lorg/chromium/chrome/R$string;->bookmark_item_edit:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lorg/chromium/chrome/R$string;->bookmark_item_move:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lorg/chromium/chrome/R$string;->bookmark_item_delete:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow$1;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mPopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 141
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mPopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$dimen;->bookmark_item_popup_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 143
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mPopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 144
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mPopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v8}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 145
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mPopupMenu:Landroid/widget/ListPopupWindow;

    new-instance v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow$2;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 170
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mPopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 171
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mPopupMenu:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 172
    return-void
.end method

.method private updateSelectionState()V
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mMoreIcon:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->isSelectionEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setClickable(Z)V

    .line 94
    :cond_0
    return-void

    .line 93
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mHighlightView:Lorg/chromium/chrome/browser/bookmarks/BookmarkItemHighlightView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemHighlightView;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected isSelectable()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public onAllBookmarksStateSet()V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mIsAttachedToWindow:Z

    .line 204
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->initialize()V

    .line 205
    :cond_0
    return-void
.end method

.method public onBookmarkDelegateInitialized(Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;)V
    .locals 1

    .prologue
    .line 258
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 259
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    .line 260
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->initialize()V

    .line 261
    :cond_1
    return-void
.end method

.method protected abstract onClick()V
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 218
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-eq p1, p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 220
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->isSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->onLongClick(Landroid/view/View;)Z

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->onClick()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->cleanup()V

    .line 266
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mIsAttachedToWindow:Z

    .line 211
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->cleanup()V

    .line 212
    return-void
.end method

.method public onFilterStateSet(Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;)V
    .locals 0

    .prologue
    .line 278
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 180
    sget v0, Lorg/chromium/chrome/R$id;->bookmark_image:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mIconImageView:Landroid/widget/ImageView;

    .line 181
    sget v0, Lorg/chromium/chrome/R$id;->title:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mTitleView:Landroid/widget/TextView;

    .line 183
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    sget v0, Lorg/chromium/chrome/R$id;->highlight:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemHighlightView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mHighlightView:Lorg/chromium/chrome/browser/bookmarks/BookmarkItemHighlightView;

    .line 186
    sget v0, Lorg/chromium/chrome/R$id;->more:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/TintedImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mMoreIcon:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    .line 187
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mMoreIcon:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mMoreIcon:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    new-instance v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow$3;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    :cond_0
    invoke-virtual {p0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    invoke-virtual {p0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 198
    return-void
.end method

.method public onFolderStateSet(Lorg/chromium/components/bookmarks/BookmarkId;)V
    .locals 0

    .prologue
    .line 274
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 231
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-eq p1, p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 232
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 234
    :goto_0
    return v0

    .line 233
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->toggleSelectionForBookmark(Lorg/chromium/components/bookmarks/BookmarkId;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->setChecked(Z)V

    .line 234
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSelectionStateChange(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->updateSelectionState()V

    .line 283
    return-void
.end method

.method setBookmarkId(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;
    .locals 3

    .prologue
    .line 57
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mBookmarkId:Lorg/chromium/components/bookmarks/BookmarkId;

    .line 58
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->getBookmarkById(Lorg/chromium/components/bookmarks/BookmarkId;)Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;

    move-result-object v1

    .line 59
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->clearPopup()V

    .line 60
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mMoreIcon:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkItem;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->isBookmarkSelected(Lorg/chromium/components/bookmarks/BookmarkId;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->setChecked(Z)V

    .line 64
    :cond_0
    return-object v1

    .line 61
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->mHighlightView:Lorg/chromium/chrome/browser/bookmarks/BookmarkItemHighlightView;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkItemHighlightView;->setChecked(Z)V

    .line 252
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->setChecked(Z)V

    .line 247
    return-void

    .line 246
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
