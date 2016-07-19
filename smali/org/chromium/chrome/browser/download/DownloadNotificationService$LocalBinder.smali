.class public Lorg/chromium/chrome/browser/download/DownloadNotificationService$LocalBinder;
.super Landroid/os/Binder;
.source "DownloadNotificationService.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/download/DownloadNotificationService;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/download/DownloadNotificationService;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$LocalBinder;->this$0:Lorg/chromium/chrome/browser/download/DownloadNotificationService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lorg/chromium/chrome/browser/download/DownloadNotificationService;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadNotificationService$LocalBinder;->this$0:Lorg/chromium/chrome/browser/download/DownloadNotificationService;

    return-object v0
.end method
