import Data.Monoid

isBigGang :: Int -> (Bool, String)
isBigGang x = (x > 9, "Compared gang size to 9.")

--applyLog :: (a, String) -> (a -> (b, String)) -> (b, String)
--applyLog :: (a, [c]) -> (a -> (b, [c])) -> (b, [c])
applyLog :: (Monoid m) => (a, m) -> (a -> (b, m)) -> (b, m)
applyLog (x, log) f = let (y, newLog) = f x in (y, log `mappend` newLog)