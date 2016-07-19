.class Lorg/chromium/content/browser/ContentViewCore$6;
.super Ljava/lang/Object;
.source "ContentViewCore.java"

# interfaces
.implements Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/ContentViewCore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1993
    const-class v0, Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ContentViewCore$6;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0

    .prologue
    .line 1993
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isShareAvailable()Z
    .locals 3

    .prologue
    .line 2147
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2148
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2149
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWebSearchAvailable()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 2154
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewClient;->doesPerformWebSearch()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2157
    :cond_0
    :goto_0
    return v0

    .line 2155
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.WEB_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2156
    const-string/jumbo v2, "new_search"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2157
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sanitizeQuery(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 2164
    :cond_0
    :goto_0
    return-object p1

    .line 2163
    :cond_1
    const-string/jumbo v0, "cr.ContentViewCore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Truncating oversized query ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u2026"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public copy()V
    .locals 1

    .prologue
    .line 2015
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    # getter for: Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1100(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->copy()V

    .line 2016
    return-void
.end method

.method public cut()V
    .locals 1

    .prologue
    .line 2010
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    # getter for: Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1100(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->cut()V

    .line 2011
    return-void
.end method

.method public isIncognito()Z
    .locals 1

    .prologue
    .line 2128
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    # getter for: Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1100(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->isIncognito()Z

    move-result v0

    return v0
.end method

.method public isInsertion()Z
    .locals 1

    .prologue
    .line 2103
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    # getter for: Lorg/chromium/content/browser/ContentViewCore;->mHasInsertion:Z
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1900(Lorg/chromium/content/browser/ContentViewCore;)Z

    move-result v0

    return v0
.end method

.method public isSelectActionModeAllowed(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2133
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/chromium/content/browser/ContentViewClient;->isSelectActionModeAllowed(I)Z

    move-result v2

    .line 2135
    if-ne p1, v0, :cond_2

    .line 2136
    if-eqz v2, :cond_1

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore$6;->isShareAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2143
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2136
    goto :goto_0

    .line 2139
    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    .line 2140
    if-eqz v2, :cond_3

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore$6;->isWebSearchAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 2143
    goto :goto_0
.end method

.method public isSelectionEditable()Z
    .locals 1

    .prologue
    .line 2098
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    # getter for: Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$900(Lorg/chromium/content/browser/ContentViewCore;)Z

    move-result v0

    return v0
.end method

.method public isSelectionPassword()Z
    .locals 1

    .prologue
    .line 2093
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    # getter for: Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeIsPassword:Z
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1800(Lorg/chromium/content/browser/ContentViewCore;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode()V
    .locals 2

    .prologue
    .line 2108
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Lorg/chromium/content/browser/WebActionMode;
    invoke-static {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->access$2002(Lorg/chromium/content/browser/ContentViewCore;Lorg/chromium/content/browser/WebActionMode;)Lorg/chromium/content/browser/WebActionMode;

    .line 2109
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    # getter for: Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$2100(Lorg/chromium/content/browser/ContentViewCore;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2110
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    # invokes: Lorg/chromium/content/browser/ContentViewCore;->dismissTextHandles()V
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1000(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 2111
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->clearSelection()V

    .line 2113
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    # invokes: Lorg/chromium/content/browser/ContentViewCore;->supportsFloatingActionMode()Z
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$2200(Lorg/chromium/content/browser/ContentViewCore;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2114
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewClient;->onContextualActionBarHidden()V

    .line 2116
    :cond_1
    return-void
.end method

.method public onGetContentRect(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 2122
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    # getter for: Lorg/chromium/content/browser/ContentViewCore;->mSelectionRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$2300(Lorg/chromium/content/browser/ContentViewCore;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2123
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    # getter for: Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;
    invoke-static {v1}, Lorg/chromium/content/browser/ContentViewCore;->access$2400(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2124
    return-void
.end method

.method public paste()V
    .locals 1

    .prologue
    .line 2020
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    # getter for: Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1100(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->paste()V

    .line 2021
    return-void
.end method

.method public processText(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 2043
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore$6;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2045
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore$6;->sanitizeQuery(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2046
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2066
    :goto_0
    return-void

    .line 2048
    :cond_1
    const-string/jumbo v1, "android.intent.extra.PROCESS_TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2050
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewClient;->doesPerformProcessText()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2051
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewClient;->startProcessTextIntent(Landroid/content/Intent;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 2053
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    new-instance v1, Lorg/chromium/content/browser/ContentViewCore$6$1;

    invoke-direct {v1, p0}, Lorg/chromium/content/browser/ContentViewCore$6$1;-><init>(Lorg/chromium/content/browser/ContentViewCore$6;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public search()V
    .locals 4

    .prologue
    .line 2070
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore$6;->sanitizeQuery(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2071
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2089
    :goto_0
    return-void

    .line 2074
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewClient;->doesPerformWebSearch()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2075
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/ContentViewClient;->performWebSearch(Ljava/lang/String;)V

    goto :goto_0

    .line 2079
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.WEB_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2080
    const-string/jumbo v2, "new_search"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2081
    const-string/jumbo v2, "query"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2082
    const-string/jumbo v0, "com.android.browser.application_id"

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2083
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2085
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2089
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public selectAll()V
    .locals 1

    .prologue
    .line 2005
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    # getter for: Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1100(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->selectAll()V

    .line 2006
    return-void
.end method

.method public share()V
    .locals 3

    .prologue
    .line 2025
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    const v1, 0x186a0

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore$6;->sanitizeQuery(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2026
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2039
    :goto_0
    return-void

    .line 2028
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2029
    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2030
    const-string/jumbo v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2032
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lorg/chromium/content/R$string;->actionbar_share:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 2034
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2035
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2039
    :catch_0
    move-exception v0

    goto :goto_0
.end method
