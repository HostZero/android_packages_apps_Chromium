.class Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$9;
.super Ljava/lang/Object;
.source "LocationBarLayout.java"

# interfaces
.implements Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)V
    .locals 0

    .prologue
    .line 1433
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$9;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxMatchContentsWidth()F
    .locals 1

    .prologue
    .line 1492
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$9;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->getMaxMatchContentsWidth()F

    move-result v0

    return v0
.end method

.method public getMaxRequiredWidth()F
    .locals 1

    .prologue
    .line 1487
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$9;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->getMaxRequiredWidth()F

    move-result v0

    return v0
.end method

.method public onDeleteSuggestion(I)V
    .locals 1

    .prologue
    .line 1462
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$9;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mAutocomplete:Lorg/chromium/chrome/browser/omnibox/AutocompleteController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$1000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/AutocompleteController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$9;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mAutocomplete:Lorg/chromium/chrome/browser/omnibox/AutocompleteController;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$1000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/AutocompleteController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->deleteSuggestion(I)V

    .line 1463
    :cond_0
    return-void
.end method

.method public onGestureDown()V
    .locals 2

    .prologue
    .line 1467
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$9;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    const/4 v1, 0x0

    # invokes: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->stopAutocomplete(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$2100(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Z)V

    .line 1468
    return-void
.end method

.method public onHideModal()V
    .locals 2

    .prologue
    .line 1477
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$9;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionModalShown:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$1302(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Z)Z

    .line 1478
    return-void
.end method

.method public onRefineSuggestion(Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;)V
    .locals 3

    .prologue
    .line 1446
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$9;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    const/4 v1, 0x0

    # invokes: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->stopAutocomplete(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$2100(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Z)V

    .line 1447
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$9;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    iget-object v0, v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getFillIntoEdit()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setUrl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1448
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$9;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    iget-object v0, v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$9;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    iget-object v1, v1, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setSelection(I)V

    .line 1449
    const-string/jumbo v0, "MobileOmniboxRefineSuggestion"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 1450
    return-void
.end method

.method public onSelection(Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;I)V
    .locals 4

    .prologue
    .line 1436
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$9;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionSelectionInProgress:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$402(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Z)Z

    .line 1437
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$9;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # invokes: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->updateSuggestionUrlIfNeeded(Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;I)Ljava/lang/String;
    invoke-static {v0, p1, p2}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$1100(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;I)Ljava/lang/String;

    move-result-object v0

    .line 1438
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$9;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getTransition()I

    move-result v2

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getType()I

    move-result v3

    # invokes: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->loadUrlFromOmniboxMatch(Ljava/lang/String;III)V
    invoke-static {v1, v0, v2, p2, v3}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$1200(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Ljava/lang/String;III)V

    .line 1440
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$9;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->hideSuggestions()V

    .line 1441
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$9;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    iget-object v0, v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-static {v0}, Lorg/chromium/ui/UiUtils;->hideKeyboard(Landroid/view/View;)Z

    .line 1442
    return-void
.end method

.method public onSetUrlToSuggestion(Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1454
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$9;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mIgnoreOmniboxItemSelection:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$200(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1458
    :goto_0
    return-void

    .line 1455
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$9;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getFillIntoEdit()Ljava/lang/String;

    move-result-object v1

    # invokes: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->setUrlBarText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v2, v2, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$300(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1456
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$9;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    iget-object v0, v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$9;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    iget-object v1, v1, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setSelection(I)V

    .line 1457
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$9;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mIgnoreOmniboxItemSelection:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$202(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Z)Z

    goto :goto_0
.end method

.method public onShowModal()V
    .locals 2

    .prologue
    .line 1472
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$9;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionModalShown:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$1302(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Z)Z

    .line 1473
    return-void
.end method

.method public onTextWidthsUpdated(FF)V
    .locals 1

    .prologue
    .line 1482
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$9;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->updateMaxTextWidths(FF)V

    .line 1483
    return-void
.end method
