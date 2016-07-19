.class Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler$RequestRecord;
.super Ljava/lang/Object;
.source "CastMessageHandler.java"


# instance fields
.field public final clientId:Ljava/lang/String;

.field public final sequenceNumber:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler$RequestRecord;->clientId:Ljava/lang/String;

    .line 89
    iput p2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler$RequestRecord;->sequenceNumber:I

    .line 90
    return-void
.end method
