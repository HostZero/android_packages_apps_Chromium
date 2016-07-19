.class public Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;
.super Ljava/lang/Object;
.source "NotificationBuilderBase.java"


# instance fields
.field public iconBitmap:Landroid/graphics/Bitmap;

.field public iconId:I

.field public intent:Landroid/app/PendingIntent;

.field public title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;->iconId:I

    .line 39
    iput-object p2, p0, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;->title:Ljava/lang/CharSequence;

    .line 40
    iput-object p3, p0, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;->intent:Landroid/app/PendingIntent;

    .line 41
    return-void
.end method

.method constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;->iconBitmap:Landroid/graphics/Bitmap;

    .line 45
    iput-object p2, p0, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;->title:Ljava/lang/CharSequence;

    .line 46
    iput-object p3, p0, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;->intent:Landroid/app/PendingIntent;

    .line 47
    return-void
.end method
