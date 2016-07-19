.class public Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;
.super Landroid/widget/BaseAdapter;
.source "OmniboxResultsAdapter.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;

.field private mSuggestionDelegate:Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;

.field private final mSuggestionItems:Ljava/util/List;

.field private mUseDarkColors:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/omnibox/LocationBar;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;->mUseDarkColors:Z

    .line 32
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;

    .line 34
    iput-object p3, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;->mSuggestionItems:Ljava/util/List;

    .line 35
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;->mSuggestionItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;->mSuggestionItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 53
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSuggestionDelegate()Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;->mSuggestionDelegate:Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 59
    instance-of v0, p2, Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    if-eqz v0, :cond_0

    .line 60
    check-cast p2, Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    .line 64
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;->mSuggestionItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;->mSuggestionDelegate:Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;->mUseDarkColors:Z

    invoke-virtual {p2, v0, v1, p1, v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->init(Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;IZ)V

    .line 66
    return-object p2

    .line 62
    :cond_0
    new-instance p2, Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;

    invoke-direct {p2, v0, v1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/omnibox/LocationBar;)V

    goto :goto_0
.end method

.method public notifySuggestionsChanged()V
    .locals 0

    .prologue
    .line 38
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;->notifyDataSetChanged()V

    .line 39
    return-void
.end method

.method public setSuggestionDelegate(Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;->mSuggestionDelegate:Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;

    .line 76
    return-void
.end method

.method public setUseDarkColors(Z)V
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter;->mUseDarkColors:Z

    .line 92
    return-void
.end method
