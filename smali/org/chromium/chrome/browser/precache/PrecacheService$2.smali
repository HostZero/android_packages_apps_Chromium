.class Lorg/chromium/chrome/browser/precache/PrecacheService$2;
.super Lorg/chromium/chrome/browser/precache/PrecacheLauncher;
.source "PrecacheService.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/precache/PrecacheService;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/precache/PrecacheService;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lorg/chromium/chrome/browser/precache/PrecacheService$2;->this$0:Lorg/chromium/chrome/browser/precache/PrecacheService;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPrecacheCompleted(Z)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheService$2;->this$0:Lorg/chromium/chrome/browser/precache/PrecacheService;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/precache/PrecacheService;->handlePrecacheCompleted(Z)V

    .line 88
    return-void
.end method
