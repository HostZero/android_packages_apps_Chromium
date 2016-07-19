.class public Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksShim;
.super Ljava/lang/Object;
.source "PartnerBookmarksShim.java"


# static fields
.field private static sIsReadingAttempted:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static kickOffReading(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 26
    sget-boolean v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksShim;->sIsReadingAttempted:Z

    if-eqz v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksShim;->sIsReadingAttempted:Z

    .line 29
    new-instance v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 31
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->onBookmarksRead()V

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->readBookmarks()V

    goto :goto_0
.end method
