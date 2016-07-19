.class public interface abstract Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;
.super Ljava/lang/Object;
.source "DocumentTabModel.java"

# interfaces
.implements Lorg/chromium/chrome/browser/tabmodel/TabModel;


# virtual methods
.method public abstract addInitializationObserver(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;)V
.end method

.method public abstract addTab(Landroid/content/Intent;Lorg/chromium/chrome/browser/tab/Tab;)V
.end method

.method public abstract closeTabAt(I)Z
.end method

.method public abstract getCurrentInitializationStage()I
.end method

.method public abstract getCurrentUrlForDocument(I)Ljava/lang/String;
.end method

.method public abstract getInitialUrlForDocument(I)Ljava/lang/String;
.end method

.method public abstract getTabStateForDocument(I)Lorg/chromium/chrome/browser/TabState;
.end method

.method public abstract hasEntryForTabId(I)Z
.end method

.method public abstract initializeNative()V
.end method

.method public abstract isNativeInitialized()Z
.end method

.method public abstract isRetargetable(I)Z
.end method

.method public abstract isTabStateReady(I)Z
.end method

.method public abstract setLastShownId(I)Z
.end method

.method public abstract startTabStateLoad()V
.end method

.method public abstract updateEntry(Landroid/content/Intent;Lorg/chromium/chrome/browser/tab/Tab;)V
.end method

.method public abstract updateRecentlyClosed()V
.end method
