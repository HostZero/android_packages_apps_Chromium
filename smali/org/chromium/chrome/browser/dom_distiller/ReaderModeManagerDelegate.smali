.class public interface abstract Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;
.super Ljava/lang/Object;
.source "ReaderModeManagerDelegate.java"


# virtual methods
.method public abstract closeReaderPanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V
.end method

.method public abstract createNewTab(Ljava/lang/String;)V
.end method

.method public abstract getBasePageWebContents()Lorg/chromium/content_public/browser/WebContents;
.end method

.method public abstract getChromeActivity()Lorg/chromium/chrome/browser/ChromeActivity;
.end method

.method public abstract onClosed(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V
.end method

.method public abstract onSizeChanged()V
.end method

.method public abstract recordTimeSpentInReader(J)V
.end method

.method public abstract setReaderModePanel(Lorg/chromium/chrome/browser/compositor/bottombar/readermode/ReaderModePanel;)V
.end method
