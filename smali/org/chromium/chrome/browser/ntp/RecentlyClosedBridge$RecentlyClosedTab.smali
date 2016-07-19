.class Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;
.super Ljava/lang/Object;
.source "RecentlyClosedBridge.java"


# instance fields
.field public final id:I

.field public final title:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;->id:I

    .line 44
    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;->title:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;->url:Ljava/lang/String;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$1;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/ntp/RecentlyClosedBridge$RecentlyClosedTab;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
