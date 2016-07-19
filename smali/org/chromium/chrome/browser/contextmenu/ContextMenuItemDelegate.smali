.class public interface abstract Lorg/chromium/chrome/browser/contextmenu/ContextMenuItemDelegate;
.super Ljava/lang/Object;
.source "ContextMenuItemDelegate.java"


# static fields
.field public static final CLIPBOARD_TYPE_IMAGE_URL:I = 0x2

.field public static final CLIPBOARD_TYPE_LINK_TEXT:I = 0x1

.field public static final CLIPBOARD_TYPE_LINK_URL:I


# virtual methods
.method public abstract getPageUrl()Ljava/lang/String;
.end method

.method public abstract isDataReductionProxyEnabledForURL(Ljava/lang/String;)Z
.end method

.method public abstract isIncognito()Z
.end method

.method public abstract isIncognitoSupported()Z
.end method

.method public abstract onLoadOriginalImage()V
.end method

.method public abstract onOpenImageInNewTab(Ljava/lang/String;Lorg/chromium/content_public/common/Referrer;)V
.end method

.method public abstract onOpenImageUrl(Ljava/lang/String;Lorg/chromium/content_public/common/Referrer;)V
.end method

.method public abstract onOpenInChrome(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onOpenInNewIncognitoTab(Ljava/lang/String;)V
.end method

.method public abstract onOpenInNewTab(Ljava/lang/String;Lorg/chromium/content_public/common/Referrer;)V
.end method

.method public abstract onReloadLoFiImages()V
.end method

.method public abstract onSaveToClipboard(Ljava/lang/String;I)V
.end method

.method public abstract startDownload(Ljava/lang/String;Z)Z
.end method
