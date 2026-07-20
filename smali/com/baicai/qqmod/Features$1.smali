.class Lcom/baicai/qqmod/Features$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "Features.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baicai/qqmod/Features;->pokeNoCoolDown(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2

    .line 107
    :try_start_0
    const-string v0, "pokeNoCoolDown"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baicai/qqmod/Config;->isEnabled(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception p1

    :goto_0
    nop

    .line 110
    return-void
.end method
