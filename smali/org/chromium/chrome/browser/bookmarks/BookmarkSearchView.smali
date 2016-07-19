.class public Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;
.super Landroid/widget/LinearLayout;
.source "BookmarkSearchView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchRow$SearchHistoryDelegate;
.implements Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

.field private mCurrentUIState:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

.field private mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

.field private mHistoryList:Landroid/widget/ListView;

.field private mHistoryResultSwitcher:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$HistoryResultSwitcher;

.field private mModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

.field private mResultList:Landroid/widget/ListView;

.field private mSearchText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$1;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;)Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mCurrentUIState:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->sendSearchQuery()V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->onBackPressed()V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->resetUI()V

    return-void
.end method

.method private addCurrentTextToHistoryList(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-object p1

    .line 322
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 323
    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 324
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 325
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method private onBackPressed()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mCurrentUIState:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    sget-object v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;->HISTORY:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    if-ne v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->closeSearchUI()V

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->resetUI()V

    goto :goto_0
.end method

.method private populateResultListView(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 228
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    sget-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;->EMPTY:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->setUIState(Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;)V

    .line 234
    :goto_0
    return-void

    .line 231
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;->RESULT:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->setUIState(Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;)V

    .line 232
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mResultList:Landroid/widget/ListView;

    new-instance v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$ResultListAdapter;

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-direct {v1, p0, p1, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$ResultListAdapter;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;Ljava/util/List;Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private readHistoryList()Ljava/util/List;
    .locals 4

    .prologue
    .line 302
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "bookmark_search_history"

    const-string/jumbo v2, "[]"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 306
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 307
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method private resetUI()V
    .locals 2

    .prologue
    .line 188
    sget-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;->HISTORY:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->setUIState(Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;)V

    .line 189
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mResultList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 190
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mSearchText:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :cond_0
    return-void
.end method

.method private saveHistoryList(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 295
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 296
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "bookmark_search_history"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 298
    return-void
.end method

.method private sendSearchQuery()V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->searchBookmarks(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 199
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->populateResultListView(Ljava/util/List;)V

    goto :goto_0
.end method

.method private setUIState(Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;)V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mCurrentUIState:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    if-ne v0, p1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mCurrentUIState:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    .line 239
    sget-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;->HISTORY:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    if-ne p1, v0, :cond_2

    .line 240
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mHistoryResultSwitcher:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$HistoryResultSwitcher;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$HistoryResultSwitcher;->showHistory()V

    .line 241
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->updateHistoryList()V

    goto :goto_0

    .line 242
    :cond_2
    sget-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;->RESULT:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    if-ne p1, v0, :cond_3

    .line 243
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mHistoryResultSwitcher:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$HistoryResultSwitcher;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$HistoryResultSwitcher;->showResult()V

    goto :goto_0

    .line 244
    :cond_3
    sget-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;->EMPTY:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    if-ne p1, v0, :cond_0

    .line 245
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mHistoryResultSwitcher:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$HistoryResultSwitcher;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$HistoryResultSwitcher;->showEmpty()V

    goto :goto_0
.end method

.method private updateHistoryList()V
    .locals 7

    .prologue
    .line 170
    iget-object v6, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mHistoryList:Landroid/widget/ListView;

    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$4;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090003

    const v4, 0x1020014

    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->readHistoryList()Ljava/util/List;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$4;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;Landroid/content/Context;IILjava/util/List;)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 185
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 205
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 221
    :goto_0
    return v0

    .line 207
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 208
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 209
    if-eqz v1, :cond_2

    .line 210
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 211
    invoke-virtual {v1, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 215
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->onBackPressed()V

    goto :goto_0

    .line 221
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onAllBookmarksStateSet()V
    .locals 0

    .prologue
    .line 354
    return-void
.end method

.method public onBookmarkDelegateInitialized(Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;)V
    .locals 1

    .prologue
    .line 341
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    .line 342
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->addUIObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;)V

    .line 343
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getModel()Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    .line 344
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->removeObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;)V

    .line 349
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->removeUIObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkUIObserver;)V

    .line 350
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 285
    invoke-static {p1}, Lorg/chromium/ui/UiUtils;->hideKeyboard(Landroid/view/View;)Z

    .line 289
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->saveSearchHistory()V

    .line 291
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onFilterStateSet(Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;)V
    .locals 0

    .prologue
    .line 362
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 131
    sget v0, Lorg/chromium/chrome/R$id;->bookmark_search_text:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mSearchText:Landroid/widget/EditText;

    .line 132
    sget v0, Lorg/chromium/chrome/R$id;->bookmark_result_list:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mResultList:Landroid/widget/ListView;

    .line 133
    sget v0, Lorg/chromium/chrome/R$id;->bookmark_history_list:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mHistoryList:Landroid/widget/ListView;

    .line 134
    sget v0, Lorg/chromium/chrome/R$id;->history_result_switcher:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$HistoryResultSwitcher;

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mHistoryResultSwitcher:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$HistoryResultSwitcher;

    .line 136
    sget v0, Lorg/chromium/chrome/R$id;->search_bar:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 137
    sget v1, Lorg/chromium/chrome/R$drawable;->bookmark_back_normal:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 138
    sget v1, Lorg/chromium/chrome/R$string;->accessibility_toolbar_btn_back:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 139
    new-instance v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$2;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mHistoryList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 147
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 148
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mSearchText:Landroid/widget/EditText;

    new-instance v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$3;-><init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 166
    sget-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;->HISTORY:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    iput-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mCurrentUIState:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    .line 167
    return-void
.end method

.method public onFolderStateSet(Lorg/chromium/components/bookmarks/BookmarkId;)V
    .locals 0

    .prologue
    .line 358
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 278
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mHistoryList:Landroid/widget/ListView;

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Only history list should have onItemClickListener."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 279
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 280
    return-void
.end method

.method public onSelectionStateChange(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 251
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 253
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    if-nez v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 255
    :cond_0
    if-nez p2, :cond_1

    .line 256
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->addObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;)V

    .line 257
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->updateHistoryList()V

    .line 258
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 259
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mSearchText:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/chromium/ui/UiUtils;->showKeyboard(Landroid/view/View;)V

    goto :goto_0

    .line 261
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mSearchText:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/chromium/ui/UiUtils;->hideKeyboard(Landroid/view/View;)Z

    .line 262
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mBookmarkModel:Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->mModelObserver:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->removeObserver(Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge$BookmarkModelObserver;)V

    .line 263
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->resetUI()V

    .line 264
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->clearFocus()V

    goto :goto_0
.end method

.method public saveSearchHistory()V
    .locals 1

    .prologue
    .line 334
    invoke-direct {p0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->readHistoryList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->addCurrentTextToHistoryList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->saveHistoryList(Ljava/util/List;)V

    .line 335
    return-void
.end method
