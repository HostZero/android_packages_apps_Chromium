.class public Lorg/chromium/chrome/browser/sync/ProfileSyncService$GetAllNodesCallback;
.super Ljava/lang/Object;
.source "ProfileSyncService.java"


# instance fields
.field private mNodesString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNodesAsJsonArray()Lorg/json/JSONArray;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService$GetAllNodesCallback;->mNodesString:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lorg/chromium/chrome/browser/sync/ProfileSyncService$GetAllNodesCallback;->mNodesString:Ljava/lang/String;

    .line 49
    return-void
.end method
