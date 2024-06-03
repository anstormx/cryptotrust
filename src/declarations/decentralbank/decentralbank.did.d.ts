import type { Principal } from '@dfinity/principal';
export interface _SERVICE {
  'checkbalance' : () => Promise<number>,
  'compoundint' : () => Promise<undefined>,
  'deposit' : (arg_0: number) => Promise<undefined>,
  'withdraw' : (arg_0: number) => Promise<undefined>,
}
