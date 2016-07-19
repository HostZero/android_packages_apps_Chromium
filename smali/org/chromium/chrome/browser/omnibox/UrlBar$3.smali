.class Lorg/chromium/chrome/browser/omnibox/UrlBar$3;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "UrlBar.java"


# instance fields
.field private final mTempSelectionChar:[C

.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/UrlBar;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/UrlBar;Landroid/view/inputmethod/InputConnection;Z)V
    .locals 1

    .prologue
    .line 952
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar$3;->this$0:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 953
    const/4 v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar$3;->mTempSelectionChar:[C

    return-void
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 957
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar$3;->this$0:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 958
    if-nez v1, :cond_1

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    .line 999
    :cond_0
    :goto_0
    return v0

    .line 960
    :cond_1
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 961
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 962
    iget-object v4, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar$3;->this$0:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    # getter for: Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAutocompleteSpan:Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;
    invoke-static {v4}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->access$300(Lorg/chromium/chrome/browser/omnibox/UrlBar;)Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 971
    if-ne p2, v0, :cond_3

    if-lez v2, :cond_3

    if-eq v2, v3, :cond_3

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    if-lt v3, v5, :cond_3

    if-ne v4, v2, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v0, :cond_3

    .line 975
    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar$3;->mTempSelectionChar:[C

    invoke-interface {v1, v2, v4, v5, v6}, Landroid/text/Editable;->getChars(II[CI)V

    .line 976
    iget-object v4, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar$3;->mTempSelectionChar:[C

    aget-char v4, v4, v6

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_3

    .line 980
    iget-object v4, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar$3;->this$0:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    # getter for: Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-static {v4}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->access$400(Lorg/chromium/chrome/browser/omnibox/UrlBar;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar$3;->this$0:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    # getter for: Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-static {v4}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->access$400(Lorg/chromium/chrome/browser/omnibox/UrlBar;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 981
    const/16 v4, 0x10

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v4

    .line 983
    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 984
    invoke-virtual {v4, v6}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 985
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 986
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 987
    iget-object v5, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar$3;->this$0:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v5, v4}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 990
    :cond_2
    iget-object v4, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar$3;->this$0:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v1, v6, v5}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v2, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->setAutocompleteText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 993
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar$3;->this$0:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    # getter for: Lorg/chromium/chrome/browser/omnibox/UrlBar;->mInBatchEditMode:Z
    invoke-static {v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->access$500(Lorg/chromium/chrome/browser/omnibox/UrlBar;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 994
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar$3;->this$0:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    # invokes: Lorg/chromium/chrome/browser/omnibox/UrlBar;->notifyAutocompleteTextStateChanged(Z)V
    invoke-static {v1, v6}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->access$600(Lorg/chromium/chrome/browser/omnibox/UrlBar;Z)V

    goto/16 :goto_0

    .line 999
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 4

    .prologue
    .line 1004
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar$3;->this$0:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1005
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar$3;->this$0:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    # getter for: Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAutocompleteSpan:Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;
    invoke-static {v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->access$300(Lorg/chromium/chrome/browser/omnibox/UrlBar;)Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 1006
    if-ltz v1, :cond_1

    .line 1007
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v2

    .line 1028
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int v2, v1, v2

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1035
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p0, v2, v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar$3;->setComposingRegion(II)Z

    .line 1041
    :cond_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar$3;->this$0:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    # getter for: Lorg/chromium/chrome/browser/omnibox/UrlBar;->mAutocompleteSpan:Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;
    invoke-static {v2}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->access$300(Lorg/chromium/chrome/browser/omnibox/UrlBar;)Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;->clearSpan()V

    .line 1042
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1043
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1045
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method
