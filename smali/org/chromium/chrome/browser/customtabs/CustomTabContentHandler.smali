.class public interface abstract Lorg/chromium/chrome/browser/customtabs/CustomTabContentHandler;
.super Ljava/lang/Object;
.source "CustomTabContentHandler.java"


# virtual methods
.method public abstract getSession()Landroid/os/IBinder;
.end method

.method public abstract loadUrlAndTrackFromTimestamp(Lorg/chromium/content_public/browser/LoadUrlParams;J)V
.end method

.method public abstract shouldIgnoreIntent(Landroid/content/Intent;)Z
.end method

.method public abstract updateCustomButton(ILandroid/graphics/Bitmap;Ljava/lang/String;)Z
.end method

.method public abstract updateRemoteViews(Landroid/widget/RemoteViews;)Z
.end method
