.class Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;
.super Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;
.source "FindToolbar.java"


# instance fields
.field private mFindToolbar:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 121
    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x85

    if-eq p1, v0, :cond_0

    const/16 v0, 0x23

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    :cond_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->mFindToolbar:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    # invokes: Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->hideKeyboardAndStartFinding(Z)V
    invoke-static {v2, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->access$000(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;Z)V

    .line 126
    :goto_1
    return v1

    .line 123
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 102
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 103
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 106
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 116
    :goto_0
    return v0

    .line 108
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 109
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 110
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->mFindToolbar:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->deactivate()V

    goto :goto_0

    .line 116
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTextContextMenuItem(I)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 131
    const v0, 0x1020022

    if-ne p1, v0, :cond_2

    .line 132
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 134
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    .line 135
    if-eqz v2, :cond_2

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 138
    :goto_0
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 139
    invoke-virtual {v2, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 146
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->getSelectionStart()I

    move-result v2

    .line 148
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->getSelectionEnd()I

    move-result v4

    .line 150
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 151
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v6, v0

    move v0, v1

    move v1, v6

    .line 154
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 155
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v0, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 156
    const/4 v0, 0x1

    .line 159
    :goto_1
    return v0

    :cond_2
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/widget/VerticallyFixedEditText;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_1
.end method

.method setFindToolbar(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->mFindToolbar:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    .line 98
    return-void
.end method
