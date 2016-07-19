.class final Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;
.super Ljava/lang/Object;
.source "LocationBarLayout.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$1;)V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->findMatchAndLoadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private findMatchAndLoadUrl(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 336
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 342
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->getSelectedItemPosition()I

    move-result v1

    .line 343
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionListAdapter:Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$100(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;

    .line 345
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;->getSuggestion()Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    move-result-object v0

    .line 363
    :goto_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # invokes: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateSuggestionUrlIfNeeded(Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;I)Ljava/lang/String;
    invoke-static {v3, v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$1100(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;I)Ljava/lang/String;

    move-result-object v3

    .line 370
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getType()I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    iget-object v4, v4, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->isPastedText()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 374
    :goto_1
    iget-object v4, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getType()I

    move-result v0

    # invokes: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->loadUrlFromOmniboxMatch(Ljava/lang/String;III)V
    invoke-static {v4, v3, v2, v1, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$1200(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Ljava/lang/String;III)V

    .line 376
    :cond_0
    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionItems:Ljava/util/List;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$800(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlTextAfterSuggestionsReceived:Ljava/lang/String;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$900(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionItems:Ljava/util/List;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$800(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;->getSuggestion()Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    move-result-object v0

    move v1, v2

    .line 350
    goto :goto_0

    .line 356
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mAutocomplete:Lorg/chromium/chrome/browser/omnibox/AutocompleteController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$1000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/AutocompleteController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->classify(Ljava/lang/String;)Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    move-result-object v0

    .line 360
    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 370
    :cond_3
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getTransition()I

    move-result v2

    goto :goto_1
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 264
    invoke-static {p3}, Lorg/chromium/chrome/browser/util/KeyNavigationUtil;->isGoDown(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionListAdapter:Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$100(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;->getCount()I

    move-result v0

    .line 268
    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;
    invoke-static {v3}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->getSelectedItemPosition()I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_1

    .line 269
    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # setter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mIgnoreOmniboxItemSelection:Z
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$202(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Z)Z

    .line 276
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 282
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 283
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;
    invoke-static {v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->setSelection(I)V

    .line 329
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 273
    goto :goto_0

    .line 286
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 288
    :cond_3
    invoke-static {p3}, Lorg/chromium/chrome/browser/util/KeyNavigationUtil;->isGoUp(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->isShown()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 291
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionListAdapter:Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$100(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 293
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # setter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mIgnoreOmniboxItemSelection:Z
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$202(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Z)Z

    .line 295
    :cond_4
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 296
    :cond_5
    invoke-static {p3}, Lorg/chromium/chrome/browser/util/KeyNavigationUtil;->isGoRight(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->isShown()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->getSelectedItemPosition()I

    move-result v0

    if-eq v0, v5, :cond_6

    .line 301
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionListAdapter:Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$100(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;

    move-result-object v0

    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;
    invoke-static {v3}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;

    .line 306
    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    const-string/jumbo v4, ""

    # invokes: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->setUrlBarText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v3, v6, v6, v4}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$300(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 307
    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    iget-object v3, v3, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;->getSuggestion()Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getFillIntoEdit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->setSelection(I)V

    .line 309
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    iget-object v0, v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    iget-object v2, v2, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setSelection(I)V

    move v0, v1

    .line 310
    goto/16 :goto_0

    .line 311
    :cond_6
    invoke-static {p3}, Lorg/chromium/chrome/browser/util/KeyNavigationUtil;->isEnter(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 313
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    iget-object v0, v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-static {v0}, Lorg/chromium/ui/UiUtils;->hideKeyboard(Landroid/view/View;)Z

    .line 314
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # setter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionSelectionInProgress:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$402(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Z)Z

    .line 315
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    iget-object v0, v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getQueryText()Ljava/lang/String;

    move-result-object v0

    .line 316
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mNativeInitialized:Z
    invoke-static {v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$500(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 317
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->findMatchAndLoadUrl(Ljava/lang/String;)V

    :goto_1
    move v0, v1

    .line 326
    goto/16 :goto_0

    .line 319
    :cond_7
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mDeferredNativeRunnables:Ljava/util/List;
    invoke-static {v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$700(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener$1;

    invoke-direct {v3, p0, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener$1;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$UrlBarKeyListener;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    move v0, v2

    .line 329
    goto/16 :goto_0
.end method
